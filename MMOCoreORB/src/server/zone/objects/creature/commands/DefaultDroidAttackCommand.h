/*
 * DefaultDroidAttackCommand.h
 *
 *  Created on: Jan 14, 2013
 *      Author: root
 */

#ifndef DEFAULTDROIDATTACKCOMMAND_H_
#define DEFAULTDROIDATTACKCOMMAND_H_
#include "CombatQueueCommand.h"

class DefaultDroidAttackCommand : public CombatQueueCommand {
public:

	DefaultDroidAttackCommand(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		ManagedReference<PetControlDevice*> controlDevice = creature->getControlDevice().castTo<PetControlDevice*>();
		Reference<TangibleObject*> targetObject = server->getZoneServer()->getObject(target, true).castTo<TangibleObject*>();
		if (controlDevice != NULL && controlDevice->getPetType() == PetManager::FACTIONPET){
			ManagedReference<AiAgent*> pet = cast<AiAgent*>(creature);
			if (pet != NULL && targetObject->isNeutral()){
				pet->showFlyText("npc_reaction/flytext","confused", 204, 0, 0);  // "?!!?!?!"
				return INVALIDTARGET;
			}
			if (pet != NULL && targetObject->getFaction() == creature->getFaction()){
				pet->showFlyText("npc_reaction/flytext","confused", 204, 0, 0);  // "?!!?!?!"
				return INVALIDTARGET;
			}
		}

		return doCombatAction(creature, target);
	}

};





#endif /* DEFAULTDROIDATTACKCOMMAND_H_ */

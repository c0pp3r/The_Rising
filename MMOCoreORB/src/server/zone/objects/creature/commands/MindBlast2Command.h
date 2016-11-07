/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef MINDBLAST2COMMAND_H_
#define MINDBLAST2COMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "ForcePowersQueueCommand.h"

class MindBlast2Command : public ForcePowersQueueCommand {
public:

	MindBlast2Command(const String& name, ZoneProcessServer* server)
		: ForcePowersQueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (isWearingArmor(creature)) {
			return NOJEDIARMOR;
		}

		ManagedReference<SceneObject*> targetObject = server->getZoneServer()->getObject(target);

		if (targetObject == NULL || !targetObject->isCreatureObject()) {
			return INVALIDTARGET;
		}

		CreatureObject* player = cast<CreatureObject*>(creature);
		if (!player->checkCooldownRecovery("mind_blast")){
			Time* cdTime = player->getCooldownTime("mind_blast");
			//Returns -time. Multiply by -1 to return positive
			int timeleft = floor((float)cdTime->miliDifference() /1000) * -1;

			player->sendSystemMessage("Mind Blast is on Cooldown");
			return GENERALERROR;
		}
		player->addCooldown("mind_blast", 10 * 1000); //10 second cooldown

		return doCombatAction(creature, target);
	}

};

#endif //MINDBLAST2COMMAND_H_

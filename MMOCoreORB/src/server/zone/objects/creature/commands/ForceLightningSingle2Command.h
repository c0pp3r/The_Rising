/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCELIGHTNINGSINGLE2COMMAND_H_
#define FORCELIGHTNINGSINGLE2COMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/combat/CombatManager.h"
#include "ForcePowersQueueCommand.h"

class ForceLightningSingle2Command : public ForcePowersQueueCommand {
public:

	ForceLightningSingle2Command(const String& name, ZoneProcessServer* server)
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
		if (creature->isPlayerCreature()){
			CreatureObject* player = cast<CreatureObject*>(creature);
			if (!player->checkCooldownRecovery("force_lightning_single")){
				Time* cdTime = player->getCooldownTime("force_lightning_single");
				//Returns -time. Multiply by -1 to return positive
				int timeleft = floor((float)cdTime->miliDifference() /1000) * -1;

				player->sendSystemMessage("Force Lightning Single is on Cooldown");
				return GENERALERROR;
			}
			player->addCooldown("force_lightning_single", 10 * 1000); //10 second cooldown
		}

		return doCombatAction(creature, target);
	}

};

#endif //FORCELIGHTNINGSINGLE2COMMAND_H_

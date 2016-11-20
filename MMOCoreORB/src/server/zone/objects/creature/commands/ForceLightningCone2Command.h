/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCELIGHTNINGCONE2COMMAND_H_
#define FORCELIGHTNINGCONE2COMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "ForcePowersQueueCommand.h"

class ForceLightningCone2Command : public ForcePowersQueueCommand {
public:

	ForceLightningCone2Command(const String& name, ZoneProcessServer* server)
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

			if (!player->checkCooldownRecovery("force_lightning_cone")){
				Time* cdTime = player->getCooldownTime("force_lightning_cone");
				//Returns -time. Multiply by -1 to return positive
				int timeleft = floor((float)cdTime->miliDifference() /1000) * -1;

				player->sendSystemMessage("Force Lightning Cone is on Cooldown");
				return GENERALERROR;
			}
			player->addCooldown("force_lightning_cone", 10 * 1000); //10 second cooldown
		}
		return doCombatAction(creature, target);
	}

};

#endif //FORCELIGHTNINGCONE2COMMAND_H_

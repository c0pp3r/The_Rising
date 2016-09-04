/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef SETSCALECOMMAND_H_
#define SETSCALECOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"

class SetScaleCommand : public QueueCommand {
public:

	SetScaleCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (!creature->isPlayerCreature())
			return GENERALERROR;

		float height = 1.f;
		String firstName = "";

try {
  UnicodeTokenizer tokenizer(arguments);
  ManagedReference<CreatureObject*> targetCreature = NULL;

  ManagedReference<SceneObject*> object = server->getZoneServer()->getObject(creature->getTargetID());

  if (!tokenizer.hasMoreTokens()) { // No arguments passed

      if (object != NULL && object->isCreature()) { // Target is a creature
        targetCreature = cast<CreatureObject*>( object.get());
        //targetCreature->setHeight(1, true);

      } else if (object == NULL) { // No target, scale self
        targetCreature = creature;
        //targetCreature->setHeight(1, true);

      } else { // Target is not a player or pet
        creature->sendSystemMessage("Syntax: /setScale <scale> <name>");
        return INVALIDTARGET;
      }
    }

		if (tokenizer.hasMoreTokens())
			height = tokenizer.getFloatToken();
			if (height < 0.f)
				throw Exception();

			if (height > 150.f)
				height = 150.f;

      if (tokenizer.hasMoreTokens()) {
        tokenizer.getStringToken(firstName);
				if (!firstName.isEmpty()) {
					ManagedReference<PlayerManager*> playerManager = server->getPlayerManager();
					targetCreature = playerManager->getPlayer(firstName);
					//targetCreature->setheight(height, true);
				}
			} else {
				firstName = targetCreature->getFirstName();
				//targetCreature->setheight(height, true);
			}
		} catch (Exception& e) {
			creature->sendSystemMessage("SYNTAX: /setScale <scale> <target>");
			return INVALIDPARAMETERS;
		}

		creature->sendSystemMessage("Scale set to " + String::valueOf(height) + " for " + firstName);

		//creature->setheight(height);

		return SUCCESS;
	}

};

#endif //SETSCALECOMMAND_H_

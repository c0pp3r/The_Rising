/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef MAILGALAXYCOMMAND_H_
#define MAILGALAXYCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/ZoneServer.h"
#include "server/chat/ChatManager.h"
#include "server/zone/objects/player/PlayerObject.h"

class MailGalaxyCommand : public QueueCommand {
public:

	MailGalaxyCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (!creature->isPlayerCreature())
			return GENERALERROR;

		StringTokenizer args(arguments.toString());

		//Explain syntax
		if (!args.hasMoreTokens()) {
			creature->sendSystemMessage("Syntax: /mailGalaxy <message>");
			return INVALIDPARAMETERS;
		}

		ChatManager* chatManager = server->getZoneServer()->getChatManager();

		String messageType;
		args.getStringToken(messageType);

		//Command Options
		if (messageType.charAt(0) == '-') {
			//Help syntax
			if (messageType.toLowerCase() == "-help" || messageType == "-H") {
				creature->sendSystemMessage("Syntax: /mailGalaxy <message>");
				return GENERALERROR;
			}

		//If no message type is specified, the rest of the arguments are mail as a string
		//String message = messageType + " ";
		String message;
		while (args.hasMoreTokens()) {
			String messageParts;
			args.getStringToken(messageParts);
			message = message + messageParts + " ";
		}

		chatManager->mailGalaxy(creature->getFirstName(), message);
		return SUCCESS;
	}

};

#endif //MAILGALAXYCOMMAND_H_

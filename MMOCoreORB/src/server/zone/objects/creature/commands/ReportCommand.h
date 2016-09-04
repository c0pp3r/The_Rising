/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef REPORTCOMMAND_H_
#define REPORTCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
//#include "server/zone/packets/ui/LaunchBrowserMessage.h"


class ReportCommand : public QueueCommand {
public:

	ReportCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		/*StringTokenizer args(arguments.toString());
		String commandType;
		args.getStringToken(commandType);

			if (commandType.beginsWith("bug")) {
					ManagedReference<LaunchBrowserMessage*> lbm = new LaunchBrowserMessage("www.swgnightwing.org/smf1/index.php?board=4.0");
					creature->sendMessage(lbm);
			} else if (commandType.beginsWith("ticket")) {
					ManagedReference<LaunchBrowserMessage*> lbm = new LaunchBrowserMessage("www.swgnightwing.org/smf1/index.php?board=12.0");
					creature->sendMessage(lbm);
			} else if (commandType.beginsWith("experimental")) {
					ManagedReference<LaunchBrowserMessage*> lbm = new LaunchBrowserMessage("www.swgnightwing.org/smf1/index.php?board=12.0");
					creature->sendMessage(lbm);
		}*/
		//creature->sendExecuteConsoleCommand("/yell I was dumb enough to fall for this dang trick!");
		//creature->sendExecuteConsoleCommand("/quit");

		return SUCCESS;
	}
};

#endif //REPORTCOMMAND_H_

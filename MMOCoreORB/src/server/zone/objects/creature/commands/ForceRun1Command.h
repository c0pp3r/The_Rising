/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions. */

#ifndef FORCERUN1COMMAND_H_
#define FORCERUN1COMMAND_H_

#include "JediQueueCommand.h"

class ForceRun1Command : public JediQueueCommand {
public:

	ForceRun1Command(const String& name, ZoneProcessServer* server)
	: JediQueueCommand(name, server) {
		// BuffCRC's, first one is used.
		buffCRC = BuffCRC::JEDI_FORCE_RUN_1;
    
        // If these are active they will block buff use
		blockingCRCs.add(BuffCRC::JEDI_FORCE_RUN_2);
		blockingCRCs.add(BuffCRC::JEDI_FORCE_RUN_3);
    
    
		// Skill mods.
		if(creature->hasSkill("force_discipline_enhancements_movement_02")){
			skillMods.put("force_run", 1);
			skillMods.put("slope_move", 33);
		}else{
			creature->sendSystemMessage("You lack sufficient skill to use the Force Run Command");
		}
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		int res = creature->hasBuff(buffCRC) ? NOSTACKJEDIBUFF : doJediSelfBuffCommand(creature);

		if (res == NOSTACKJEDIBUFF) {
			creature->sendSystemMessage("@jedi_spam:already_force_running"); // You are already force running.
			return GENERALERROR;
		}
		if (!creature->hasSkill("force_discipline_enhancements_movement_02")){
			//creature->sendSystemMessage("You lack sufficient skill to use the Force Run Command");
			creature->removeBuff(BuffCRC::JEDI_FORCE_RUN_1);
			return GENERALERROR;
		}
		// Return if something is in error.heDqNA5F7XjY
		if (res != SUCCESS) {
			return res;
		}

		// SPECIAL - For Force Run.
		if (creature->hasBuff(STRING_HASHCODE("burstrun")) || creature->hasBuff(STRING_HASHCODE("retreat"))) {
			creature->removeBuff(STRING_HASHCODE("burstrun"));
			creature->removeBuff(STRING_HASHCODE("retreat"));
		}

		// Return.
		return SUCCESS;
	}

};

#endif //FORCERUN1COMMAND_H_

#ifndef SETPVPCOMMAND_H_

#define SETPVPCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/tangible/terminal/characterbuilder/CharacterBuilderTerminal.h"
#include "server/zone/objects/player/sui/callbacks/BountyHuntSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/packets/player/PlayMusicMessage.h"

class setPvpCommand : public QueueCommand {
public:

	setPvpCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;
		
		if (creature->isInCombat()) {
			creature->sendSystemMessage("@jedi_spam:not_while_in_combat");
			return GENERALERROR;
		}
		
		if(creature->hasSkill("force_rank_dark_novice") || creature->hasSkill("force_rank_light_novice")){
			creature->sendSystemMessage("Jedi in the FRS may not use this command.");
			return GENERALERROR;
		}
		
		PlayerObject* targetGhost = creature->getPlayerObject();
		Zone* zone = creature->getZone();
		
		if (targetGhost == NULL)
			return GENERALERROR;

		if(targetGhost->getFactionStatus() == FactionStatus::ONLEAVE || targetGhost->getFactionStatus() == FactionStatus::COVERT){
			targetGhost->setFactionStatus(FactionStatus::OVERT);
			creature->sendSystemMessage("You are now Special Forces and can be attacked by members of the enemy faction!");
		}else{
			targetGhost->setFactionStatus(FactionStatus::ONLEAVE);
			creature->sendSystemMessage("You are now On Leave from military duty and will no longer be attackable by faction players and NPCs");
		}
		
		return SUCCESS;
	}

};

#endif //SETPVPCOMMAND_H_
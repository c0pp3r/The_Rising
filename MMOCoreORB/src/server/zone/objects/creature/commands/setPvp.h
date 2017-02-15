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
			creature->sendSystemMessage("You will be Special Forces and can be attacked by members of the enemy faction after 30 SECONDS!");
			String playerName = creature->getFirstName();
			
 			StringBuffer zBroadcast;
 			zBroadcast << "\\#00bfff" << playerName << "\\#ff7f00 is attempting to go Special Forces!";
 			creature->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
			Core::getTaskManager()->scheduleTask([creature]{
				if(creature != NULL){
					Locker locker(creature);

					PlayerObject* targetGhost = creature->getPlayerObject();
					if (targetGhost != NULL){
						if(!creature->hasSkill("force_rank_dark_novice") && !creature->hasSkill("force_rank_light_novice")){
							targetGhost->setFactionStatus(FactionStatus::OVERT);
						}else{
							creature->sendSystemMessage("Jedi in the FRS may not use this command.");
						}
					}
				}
			}, "UpdateFactionStatusTask",30);
		}else{
			creature->sendSystemMessage("You will be On Leave from military duty and will no longer be attackable by faction players and NPCs after 5 MINUTES!");
			String playerName = creature->getFirstName();
 			StringBuffer zBroadcast;
 			zBroadcast << "\\#00bfff" << playerName << "\\#ff7f00 is attempting to go On Leave!";
 			creature->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
			Core::getTaskManager()->scheduleTask([creature]{
				if(creature != NULL){
					Locker locker(creature);

					PlayerObject* targetGhost = creature->getPlayerObject();
					if (targetGhost != NULL){
						if(!creature->hasSkill("force_rank_dark_novice") && !creature->hasSkill("force_rank_light_novice")){
							targetGhost->setFactionStatus(FactionStatus::ONLEAVE);
						}else{
							creature->sendSystemMessage("Jedi in the FRS may not use this command.");
						}
					}
				}
			}, "UpdateFactionStatusTask",300000);
			
		}
		
		return SUCCESS;
	}

};

#endif //SETPVPCOMMAND_H_
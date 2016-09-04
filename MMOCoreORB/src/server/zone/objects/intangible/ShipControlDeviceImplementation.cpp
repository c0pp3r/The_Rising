/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.
*/

#include "server/zone/objects/intangible/ShipControlDevice.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/Zone.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"

void ShipControlDeviceImplementation::generateObject(CreatureObject* player) {

	if (player->isDead() || player->isIncapacitated()){
		player->sendSystemMessage("You cant fly on your back");
		return;
	}
	if (player->getParent() != NULL || player->isInCombat()) {
		player->sendSystemMessage("You cant deploy your ship in combat");
		return;
	}
	if (player->isInvisible()) {
		player->sendSystemMessage("You cant fly while stealthed");
		return;
	}
	Zone* zone = player->getZone();

	if (zone->getZoneName().contains("rori")) {

		player->sendSystemMessage("Due to the GCW conflict on this planet starship flight on this planet has been restricted");
		return;
	}


	ManagedReference<TangibleObject*> controlledObject = this->controlledObject.get();

	if(zone == NULL || controlledObject == NULL || controlledObject->isInQuadTree() || !this->isASubChildOf(player))
		return;

	Locker clocker(controlledObject, player);

	controlledObject->initializePosition(player->getPositionX(), player->getPositionZ() + 10, player->getPositionY());

	zone->transferObject(controlledObject, -1, true);

	controlledObject->transferObject(player, 5, true);

	player->setState(CreatureState::PILOTINGSHIP);

	player->sendSystemMessage("if your Ship goes 2d at any point, simply store it using your datapad radial and re-deploy it. If after many tries it does not render back to 3d, time to buy a new one and try to avoid crashing into objects");

	updateStatus(1);

	PlayerObject* ghost = player->getPlayerObject();

	if (ghost != NULL)
		ghost->setTeleporting(true);

}
void ShipControlDeviceImplementation::storeObject(CreatureObject* player, bool force) {


	ManagedReference<TangibleObject*> controlledObject = this->controlledObject.get();

	if (controlledObject == NULL)
		return;

	Locker clocker(controlledObject, player);

	if (!controlledObject->isInQuadTree())
		return;

	Zone* zone = player->getZone();

	if (zone == NULL)
		return;

	if (zone->getZoneName().contains("space_")) {

		player->sendSystemMessage("Your Ship is stored. Your body begins to ache from exposure");

		player->playEffect("clienteffect/cbt_msl_impact_concussion.cef");

		player->clearState(CreatureState::PILOTINGSHIP);

		zone->transferObject(player, -1, false);

		controlledObject->destroyObjectFromWorld(true);

		transferObject(controlledObject, 4, true);

		player->setDirection(0);

/*		player->switchZone("corellia", -148, 28, -4721, 0); */

		updateStatus(0);
		return;
	}
	player->clearState(CreatureState::PILOTINGSHIP);

	zone->transferObject(player, -1, false);
	
	controlledObject->destroyObjectFromWorld(true);

	transferObject(controlledObject, 4, true);
	
	updateStatus(0);
}

void ShipControlDeviceImplementation::fillObjectMenuResponse(ObjectMenuResponse* menuResponse, CreatureObject* player) {
	//ControlDeviceImplementation::fillObjectMenuResponse(menuResponse, player);

	ManagedReference<TangibleObject*> controlledObject = this->controlledObject.get();

	PlayMusicMessage* pmm = new PlayMusicMessage("sound/ship_hyperspace_begin.snd");
	player->sendMessage(pmm);

	if (!controlledObject->isInQuadTree()) {
		menuResponse->addRadialMenuItem(60, 3, "Deploy Ship"); //Launch
	} else
		menuResponse->addRadialMenuItem(61, 3, "Store Ship"); //Launch
	//menuResponse->addRadialMenuItem(61, 3, "Launch Ship"); //Launch
}

bool ShipControlDeviceImplementation::canBeTradedTo(CreatureObject* player, CreatureObject* receiver, int numberInTrade) {
	ManagedReference<SceneObject*> datapad = receiver->getSlottedObject("datapad");

	if (datapad == NULL)
		return false;

	ManagedReference<PlayerManager*> playerManager = player->getZoneServer()->getPlayerManager();

	int shipsInDatapad = numberInTrade;
	int maxStoredShips = playerManager->getBaseStoredShips();

	for (int i = 0; i < datapad->getContainerObjectsSize(); i++) {
		Reference<SceneObject*> obj =  datapad->getContainerObject(i).castTo<SceneObject*>();

		if (obj != NULL && obj->isShipControlDevice() ){
			shipsInDatapad++;
		}
	}

	if( shipsInDatapad >= maxStoredShips){
		player->sendSystemMessage("That person has too many ships in their datapad");
		receiver->sendSystemMessage("You already have the maximum number of ships that you can own.");
		return false;
	}

	return true;
}
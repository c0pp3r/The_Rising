/*
 * HolocronMenuComponent.cpp
 *
 *  Created on: 01/23/2012
 *      Author: xyborn
 */

#include "HolocronMenuComponent.h"

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"

#include "server/zone/ZoneServer.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/managers/jedi/JediManager.h"

int HolocronMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (selectedID != 20)
		return 0;

	if (!sceneObject->isASubChildOf(creature))
		return 0;

	JediManager::instance()->useItem(sceneObject, JediManager::ITEMHOLOCRON, creature);
        //creature->playEffect("clienteffect/pl_force_illusion.cef", "head");
        //creature->playEffect("clienteffect/pl_force_armor_self.cef", "");
				//creature->playEffect("clienteffect/pl_force_speed_self.cef", "");
				//creature->playEffect("clienteffect/pl_force_meditate_self.cef", "");
				//creature->playEffect("clienteffect/frs_dark_envy.cef", "");
				//creature->playEffect("clienteffect/frs_dark_suffering.cef", "");
				//creature->playEffect("clienteffect/frs_dark_vengeance.cef", "");
				//creature->playEffect("clienteffect/frs_light_serenity.cef", "");
				//creature->playEffect("clienteffect/frs_light_vigilance.cef", "");
				//creature->playEffect("clienteffect/frs_light_wisdom.cef", "");
        creature->playEffect("clienteffect/player_clone_compile.cef", "");

	return 0;
}


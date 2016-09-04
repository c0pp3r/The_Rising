-- Legend of Hondo Merchant System
-- By R. Bassett Jr. (Tatwi) - www.tpot.ca
-- July 2015

local ObjectManager = require("managers.object.object_manager")

EahtSkcusSP = ScreenPlay:new {
	numberOfActs = 1, 	
	relations = { 
		{name="townsperson", npcStanding=-9000, priceAdjust=0}, -- Adjust price only
	},
	goods = {
		
		{optName="marauder_01", cost=750000, itemName="Marauder Battle Armor", items={
			"object/tangible/wearables/armor/marauder/armor_marauder_s01_belt.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s01_bicep_l.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s01_bicep_r.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s01_bracer_l.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s01_bracer_r.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s01_chest_plate.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s01_gloves.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s01_helmet.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s01_leggings.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s02_boots.iff"
			
			}
		}, 	
		
{optName="marauder_02", cost=350000, itemName="Marauder Reconnaissance Armor (missing helmet)", items={
			"object/tangible/wearables/armor/marauder/armor_marauder_s02_belt.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s02_bicep_l.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s02_bicep_r.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s02_bracer_l.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s02_bracer_r.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s02_chest_plate.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s02_gloves.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s02_leggings.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s02_boots.iff"
			
			}
		}, 	

{optName="marauder_03", cost=750000, itemName="Marauder Scout Armor", items={
			"object/tangible/wearables/armor/marauder/armor_marauder_s03_belt.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s03_bicep_l.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s03_bicep_r.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s03_bracer_l.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s03_bracer_r.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s03_chest_plate.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s03_gloves.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s03_helmet.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s03_leggings.iff",
			"object/tangible/wearables/armor/marauder/armor_marauder_s03_boots.iff"
			
			}
		}, 	

{optName="clone", cost=745000, itemName="Clone Trooper Armor", items={
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_bicep_r.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_bicep_l.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_boots.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_bracer_l.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_bracer_r.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_chest_plate.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_gloves.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_belt.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_belt.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_helmet.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_leggings.iff"

			}
		}, 	


			{optName="infiltrator", cost=745000, itemName="Infiltrator Armor (Black)", items={
					"object/tangible/wearables/armor/infiltrator/armor_infiltrator_s01_belt.iff",	
					"object/tangible/wearables/armor/infiltrator/armor_infiltrator_s01_bicep_l.iff",
					"object/tangible/wearables/armor/infiltrator/armor_infiltrator_s01_bicep_r.iff",
					"object/tangible/wearables/armor/infiltrator/armor_infiltrator_s01_boots.iff",
					"object/tangible/wearables/armor/infiltrator/armor_infiltrator_s01_bracer_l.iff",
					"object/tangible/wearables/armor/infiltrator/armor_infiltrator_s01_bracer_r.iff",
					"object/tangible/wearables/armor/infiltrator/armor_infiltrator_s01_chest_plate.iff",
					"object/tangible/wearables/armor/infiltrator/armor_infiltrator_s01_gloves.iff",
					"object/tangible/wearables/armor/infiltrator/armor_infiltrator_s01_helmet.iff",
					"object/tangible/wearables/armor/infiltrator/armor_infiltrator_s01_leggings.iff"

			}
		}, 			

	},
}


registerScreenPlay("EahtSkcusSP", true)

function EahtSkcusSP:start() 
	--spawnMobile("tatooine", "eaht_skcus", 1, -27.21, -0.90, .10, 60, 1134568) -- Wayfar waypoint -5198 -6575
end

eahtskcus_convo_handler = Object:new {
	tstring = "myconversation"
 }

function eahtskcus_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	nextConversationScreen = MerchantSystem:nextConvoScreenInnards(conversationTemplate, conversingPlayer, selectedOption, EahtSkcusSP.relations, EahtSkcusSP.goods)
	
	return nextConversationScreen
end

function eahtskcus_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	conversationScreen = MerchantSystem:runScreenHandlerInnards(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, EahtSkcusSP.relations, EahtSkcusSP.goods)
	
	return conversationScreen
end
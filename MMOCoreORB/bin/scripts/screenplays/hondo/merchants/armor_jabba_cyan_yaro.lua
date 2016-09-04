-- Legend of Hondo Merchant System
-- By R. Bassett Jr. (Tatwi) - www.tpot.ca
-- July 2015

local ObjectManager = require("managers.object.object_manager")

CyanYaroSP = ScreenPlay:new {
	numberOfActs = 1, 	
	relations = { 
		{name="townsperson", npcStanding=-9000, priceAdjust=0}, -- Adjust price only
	},
	goods = {
		
	{optName="storm_worn", cost=645000, itemName="Storm Trooper Battle Worn Armor", items={
			"object/tangible/wearables/armor/stormtrooper/armor_stormtrooper_bicep_l_gcw.iff",
			"object/tangible/wearables/armor/stormtrooper/armor_stormtrooper_bicep_r_gcw.iff",
			"object/tangible/wearables/armor/stormtrooper/armor_stormtrooper_boots_gcw.iff",
			"object/tangible/wearables/armor/stormtrooper/armor_stormtrooper_bracer_l_gcw.iff",
			"object/tangible/wearables/armor/stormtrooper/armor_stormtrooper_bracer_r_gcw.iff",
			"object/tangible/wearables/armor/stormtrooper/armor_stormtrooper_chest_plate_gcw.iff",
			"object/tangible/wearables/armor/stormtrooper/armor_stormtrooper_gloves_gcw.iff",
			"object/tangible/wearables/armor/stormtrooper/armor_stormtrooper_helmet_gcw.iff",
			"object/tangible/wearables/armor/stormtrooper/armor_stormtrooper_leggings_gcw.iff",
			"object/tangible/wearables/armor/stormtrooper/armor_stormtrooper_utility_belt_gcw.iff"

			}
		}, 	
	{optName="storm_swamp", cost=645000, itemName="Swamp Trooper Armor", items={
			"object/tangible/wearables/armor/scout_trooper/armor_swamp_trooper_bicep_l.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_swamp_trooper_bicep_r.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_swamp_trooper_boots.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_swamp_trooper_bracer_l.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_swamp_trooper_bracer_r.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_swamp_trooper_chest_plate.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_swamp_trooper_gloves.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_swamp_trooper_helmet.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_swamp_trooper_leggings.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_swamp_trooper_belt.iff"

			}
		}, 	




		{optName="snow", cost=645000, itemName="Snow Trooper Armor", items={
			"object/tangible/wearables/armor/snowtrooper/armor_snowtrooper_bicep_l.iff",
			"object/tangible/wearables/armor/snowtrooper/armor_snowtrooper_bicep_r.iff",
			"object/tangible/wearables/armor/snowtrooper/armor_snowtrooper_boots.iff",
			"object/tangible/wearables/armor/snowtrooper/armor_snowtrooper_bracer_l.iff",
			"object/tangible/wearables/armor/snowtrooper/armor_snowtrooper_bracer_r.iff",
			"object/tangible/wearables/armor/snowtrooper/armor_snowtrooper_chest_plate.iff",
			"object/tangible/wearables/armor/snowtrooper/armor_snowtrooper_gloves.iff",
			"object/tangible/wearables/armor/snowtrooper/armor_snowtrooper_helmet.iff",
			"object/tangible/wearables/armor/snowtrooper/armor_snowtrooper_leggings.iff"

			}
		}, 			



		{optName="scout", cost=645000, itemName="Scout Trooper Armor", items={
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_bicep_l.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_bicep_r.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_boots.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_bracer_l.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_bracer_r.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_chest_plate.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_gloves.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_helmet.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_leggings.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_utility_belt.iff"

			}
		}, 		

		{optName="scout_camo", cost=645000, itemName="Scout Trooper Camo Armor", items={
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_bicep_camo_l.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_bicep_camo_r.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_boots_camo.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_bracer_camo_l.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_bracer_camo_r.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_chest_plate_camo.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_gloves_camo.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_helmet_camo.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_leggings_camo.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_utility_belt_camo.iff"

			}
		}, 	

		{optName="scout_worn", cost=645000, itemName="Scout Trooper Battle Worn Armor", items={
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_bicep_l_gcw.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_bicep_r_gcw.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_boots_gcw.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_bracer_l_gcw.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_bracer_r_gcw.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_chest_plate_gcw.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_gloves_gcw.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_helmet_gcw.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_leggings_gcw.iff",
			"object/tangible/wearables/armor/scout_trooper/armor_scout_trooper_utility_belt_gcw.iff"

			}
		}, 	


		{optName="crusader", cost=645000, itemName="Imperial Crusader Armor", items={
			"object/tangible/wearables/armor/mandalorian_imperial/armor_mandalorian_imperial_belt.iff",
			"object/tangible/wearables/armor/mandalorian_imperial/armor_mandalorian_imperial_bicep_l.iff",
			"object/tangible/wearables/armor/mandalorian_imperial/armor_mandalorian_imperial_bicep_r.iff",
			"object/tangible/wearables/armor/mandalorian_imperial/armor_mandalorian_imperial_boots.iff",
			"object/tangible/wearables/armor/mandalorian_imperial/armor_mandalorian_imperial_bracer_l.iff",
			"object/tangible/wearables/armor/mandalorian_imperial/armor_mandalorian_imperial_bracer_r.iff",
			"object/tangible/wearables/armor/mandalorian_imperial/armor_mandalorian_imperial_chest_plate.iff",
			"object/tangible/wearables/armor/mandalorian_imperial/armor_mandalorian_imperial_gloves.iff",
			"object/tangible/wearables/armor/mandalorian_imperial/armor_mandalorian_imperial_helmet.iff",
			"object/tangible/wearables/armor/mandalorian_imperial/armor_mandalorian_imperial_leggings.iff"

			}
		}, 				


		{optName="clone_trooper", cost=4645000, itemName="Clone Trooper Armor", items={
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_leggings.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_belt.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_bicep_l.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_bicep_r.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_boots.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_bracer_l.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_bracer_r.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_chest_plate.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_gloves.iff",
			"object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_helmet.iff"

			}
		}, 		

		{optName="death_trooper", cost=645000, itemName="Death Trooper Armor", items={
			"object/tangible/wearables/armor/deathtrooper/armor_deathtrooper_advanced_bicep_l.iff",
			"object/tangible/wearables/armor/deathtrooper/armor_deathtrooper_advanced_bicep_r.iff",
			"object/tangible/wearables/armor/deathtrooper/armor_deathtrooper_advanced_boots.iff",
			"object/tangible/wearables/armor/deathtrooper/armor_deathtrooper_advanced_bracer_l.iff",
			"object/tangible/wearables/armor/deathtrooper/armor_deathtrooper_advanced_bracer_r.iff",
			"object/tangible/wearables/armor/deathtrooper/armor_deathtrooper_advanced_chest_plate.iff",
			"object/tangible/wearables/armor/deathtrooper/armor_deathtrooper_advanced_gloves.iff",
			"object/tangible/wearables/armor/deathtrooper/armor_deathtrooper_advanced_helmet.iff",
			"object/tangible/wearables/armor/deathtrooper/armor_deathtrooper_advanced_leggings.iff"			

			}
		}, 		



		{optName="shock_trooper", cost=745000, itemName="Shock Trooper Armor", items={
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_chest_plate.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_gloves.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_helmet.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_leggings.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_utility_belt.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bicep_l.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bicep_r.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_boots.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bracer_l.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bracer_r.iff"

			}
		}, 		
		{optName="shock_trooper_battle", cost=745000, itemName="Shock Trooper Battle Worn Armor", items={
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_chest_plate_gcw.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_gloves_gcw.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_helmet_gcw.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_leggings_gcw.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_utility_belt_gcw.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bicep_l_gcw.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bicep_r_gcw.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_boots_gcw.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bracer_l_gcw.iff",
			"object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bracer_r_gcw.iff"

			}
		}, 		

	},
}


registerScreenPlay("CyanYaroSP", true)

function CyanYaroSP:start() 
	--spawnMobile("tatooine", "cyan_yaro", 1, -26.29, -0.89, -1.46, 40, 1134568) -- Wayfar waypoint -5198 -6575
end

cyanyaro_convo_handler = Object:new {
	tstring = "myconversation"
 }

function cyanyaro_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	nextConversationScreen = MerchantSystem:nextConvoScreenInnards(conversationTemplate, conversingPlayer, selectedOption, CyanYaroSP.relations, CyanYaroSP.goods)
	
	return nextConversationScreen
end

function cyanyaro_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	conversationScreen = MerchantSystem:runScreenHandlerInnards(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, CyanYaroSP.relations, CyanYaroSP.goods)
	
	return conversationScreen
end
-- Legend of Hondo Merchant System
-- By R. Bassett Jr. (Tatwi) - www.tpot.ca
-- July 2015

local ObjectManager = require("managers.object.object_manager")

JohnConnorSP = ScreenPlay:new {
	numberOfActs = 1, 	
	relations = { 
		{name="townsperson", npcStanding=-9000, priceAdjust=0}, -- Adjust price only
	},
	goods = {
		
		{optName="goggles1", cost=500000, itemName="Goggles Style 1", items={
			"object/tangible/wearables/goggles/goggles_s01.iff",
			
			
			}
		}, 	
		
		{optName="goggles2", cost=500000, itemName="Goggles Style 2", items={
			"object/tangible/wearables/goggles/goggles_s02.iff",
			
			
			}
		}, 	

		{optName="goggles3", cost=500000, itemName="Goggles Style 3", items={
			"object/tangible/wearables/goggles/goggles_s03.iff",
			
			
			}
		}, 	

		{optName="goggles4", cost=500000, itemName="Goggles Style 4", items={
			"object/tangible/wearables/goggles/goggles_s04.iff",
			

			}
		}, 	


			{optName="goggles5", cost=500000, itemName="Goggles Style 5", items={
					"object/tangible/wearables/goggles/goggles_s05.iff",	
					

			}
		}, 			
		{optName="goggles6", cost=500000, itemName="Goggles Style 6", items={
					"object/tangible/wearables/goggles/goggles_s06.iff",	
					

			}
		}, 		


		{optName="cyborgArmL", cost=245000, itemName="Cyborg Arm Left", items={
					"object/tangible/wearables/cyborg/arm_l_s01.iff",	
					

			}
		}, 		




		{optName="cyborgArmR", cost=135000, itemName="Cyborg Arm Right", items={
					"object/tangible/wearables/cyborg/arm_r_s01.iff",	
					

			}
		}, 		

		{optName="cyborgforeArmR", cost=145000, itemName="Cyborg ForeArm Left", items={
					"object/tangible/wearables/cyborg/forearm_l_s01.iff",	
					

			}
		}, 		

		{optName="cyborgforeArmR", cost=135000, itemName="Cyborg ForeArm Right", items={
					"object/tangible/wearables/cyborg/forearm_r_s01.iff",	
					

			}
		}, 		

		{optName="cyborgHandLeft", cost=125000, itemName="Cyborg Left Hand", items={
					"object/tangible/wearables/cyborg/hand_l_s01.iff",	
					

			}
		}, 		
		{optName="cyborgHandRight", cost=200000, itemName="Cyborg Right Hand", items={
					"object/tangible/wearables/cyborg/hand_r_s01.iff",	
					

			}
		}, 
		{optName="Nightsisterpants1", cost=125000, itemName="Nightsister Pants 1", items={
					"object/tangible/wearables/pants/nightsister_pants_s01.iff",	
					

			}
		}, 
		{optName="Nightsisterpants2", cost=125000, itemName="Nightsister Pants 2", items={
					"object/tangible/wearables/pants/nightsister_pants_s02.iff",	
					

			}
		}, 
		{optName="Nightsisterhat1", cost=130000, itemName="Nightsister Hat 1", items={
					"object/tangible/wearables/hat/nightsister_hat_s01.iff",	
					

			}
		}, 
		{optName="Nightsisterhat2", cost=127000, itemName="Nightsister Hat 2 ", items={
					"object/tangible/wearables/hat/nightsister_hat_s02.iff",	
					

			}
		}, 
		{optName="Nightsisterhat3", cost=145000, itemName="Nightsister Hat 3", items={
					"object/tangible/wearables/hat/nightsister_hat_s03.iff",	
					

			}
		}, 
		{optName="SingingMountainClanMask", cost=115000, itemName="Singing Mountain Clan Mask", items={
					"object/tangible/wearables/hat/singing_mountain_clan_mask_s01.iff",	
					

			}
		}, 
		{optName="SingingMountainClanHat1", cost=195000, itemName="Singing Mountain Clan Hat 1", items={
					"object/tangible/wearables/hat/singing_mountain_clan_hat_s01.iff",	
					

			}
		}, 

		{optName="SingingMountainClanHat2", cost=350000, itemName="Singing Mountain Clan Hat 2", items={
					"object/tangible/wearables/hat/singing_mountain_clan_hat_s02.iff",	
					

			}
		}, 

	},
}


registerScreenPlay("JohnConnorSP", true)

function JohnConnorSP:start() 
	--spawnMobile("tatooine", "john_connor", 1, -27.21, -0.90, 2.80, 110, 1134568) -- Wayfar waypoint -5198 -6575
end

johnconnor_convo_handler = Object:new {
	tstring = "myconversation"
 }

function johnconnor_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	nextConversationScreen = MerchantSystem:nextConvoScreenInnards(conversationTemplate, conversingPlayer, selectedOption, JohnConnorSP.relations, JohnConnorSP.goods)
	
	return nextConversationScreen
end

function johnconnor_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	conversationScreen = MerchantSystem:runScreenHandlerInnards(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, JohnConnorSP.relations, JohnConnorSP.goods)
	
	return conversationScreen
end
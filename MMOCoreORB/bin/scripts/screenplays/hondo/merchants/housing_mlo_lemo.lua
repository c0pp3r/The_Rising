-- Legend of Hondo Merchant System
-- By R. Bassett Jr. (Tatwi) - www.tpot.ca
-- July 2015

local ObjectManager = require("managers.object.object_manager")

MloLemoSP = ScreenPlay:new {
	numberOfActs = 1, 	
	relations = { 
		{name="townsperson", npcStanding=-9000, priceAdjust=0}, -- Adjust price only
	},
	goods = {
		{optName="Mandalorian_Armor", cost=10000000, itemName="Mandalorian Armor Set", items={
			"object/tangible/wearables/armor/mandalorian/armor_mandalorian_belt.iff",
			"object/tangible/wearables/armor/mandalorian/armor_mandalorian_bicep_l.iff",
			"object/tangible/wearables/armor/mandalorian/armor_mandalorian_bicep_r.iff",
			"object/tangible/wearables/armor/mandalorian/armor_mandalorian_bracer_l.iff",
			"object/tangible/wearables/armor/mandalorian/armor_mandalorian_bracer_r.iff",
			"object/tangible/wearables/armor/mandalorian/armor_mandalorian_chest_plate.iff",
			"object/tangible/wearables/armor/mandalorian/armor_mandalorian_gloves.iff",
			"object/tangible/wearables/armor/mandalorian/armor_mandalorian_helmet.iff",
			"object/tangible/wearables/armor/mandalorian/armor_mandalorian_leggings.iff",
			"object/tangible/wearables/armor/mandalorian/armor_mandalorian_shoes.iff"
			}
		}, 
	},
}


registerScreenPlay("MloLemoSP", true)

function MloLemoSP:start() 
	--spawnMobile("tatooine", "mlo_lemo", 1, -0.36, -0.38, -4.28, -42, 1157706 ) -- Mos Entha waypoint 1251 3290
end

mlolemo_convo_handler = Object:new {
	tstring = "myconversation"
 }

function mlolemo_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	nextConversationScreen = MerchantSystem:nextConvoScreenInnards(conversationTemplate, conversingPlayer, selectedOption, MloLemoSP.relations, MloLemoSP.goods)
	
	return nextConversationScreen
end

function mlolemo_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	conversationScreen = MerchantSystem:runScreenHandlerInnards(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, MloLemoSP.relations, MloLemoSP.goods)
	
	return conversationScreen
end
-- Legend of Hondo Merchant System
-- By R. Bassett Jr. (Tatwi) - www.tpot.ca
-- July 2015

local ObjectManager = require("managers.object.object_manager")

NalYaroSP = ScreenPlay:new {
	numberOfActs = 1, 	
	relations = { 
		{name="townsperson", npcStanding=-9000, priceAdjust=0}, -- Adjust price only
	},
	goods = {
		{optName="RIS_Armor", cost=7000000, itemName="RIS Armor Set", items={
			"object/tangible/wearables/armor/ris/armor_ris_leggings.iff",
			"object/tangible/wearables/armor/ris/armor_ris_helmet.iff",
			"object/tangible/wearables/armor/ris/armor_ris_gloves.iff",
			"object/tangible/wearables/armor/ris/armor_ris_chest_plate.iff",
			"object/tangible/wearables/armor/ris/armor_ris_bracer_r.iff",
			"object/tangible/wearables/armor/ris/armor_ris_bracer_l.iff",
			"object/tangible/wearables/armor/ris/armor_ris_boots.iff",
			"object/tangible/wearables/armor/ris/armor_ris_bicep_r.iff",
			"object/tangible/wearables/armor/ris/armor_ris_bicep_l.iff"
			}
		}, 
	},
}


registerScreenPlay("NalYaroSP", true)

function NalYaroSP:start() 
	--spawnMobile("tatooine", "nal_yaro", 1, -27.21, -0.89, 1.40, 101, 1134568) -- Wayfar waypoint -5199 -6571
end

nalyaro_convo_handler = Object:new {
	tstring = "myconversation"
 }

function nalyaro_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	nextConversationScreen = MerchantSystem:nextConvoScreenInnards(conversationTemplate, conversingPlayer, selectedOption, NalYaroSP.relations, NalYaroSP.goods)
	
	return nextConversationScreen
end

function nalyaro_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	conversationScreen = MerchantSystem:runScreenHandlerInnards(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, NalYaroSP.relations, NalYaroSP.goods)
	
	return conversationScreen
end
-- Legend of Hondo Merchant System
-- By R. Bassett Jr. (Tatwi) - www.tpot.ca
-- July 2015

local ObjectManager = require("managers.object.object_manager")

YivvitsSP = ScreenPlay:new {
	numberOfActs = 1, 	
	relations = { 
		{name="townsperson", npcStanding=-9000, priceAdjust=0}, -- Adjust price only
	},
	goods = {
		{optName="Bounty_Hunter_Armor", cost=8000000, itemName="Bounty Hunter Armor Set", items={
			"object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_belt.iff",
			"object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_bicep_l.iff",
			"object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_bicep_r.iff",
			"object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_boots.iff",
			"object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_bracer_l.iff",
			"object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_bracer_r.iff",
			"object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_chest_plate.iff",
			"object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_helmet.iff",	
			"object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_leggings.iff",
			"object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_gloves.iff"
			}
		}, 
	},
}


registerScreenPlay("YivvitsSP", true)

function YivvitsSP:start() 
	--spawnMobile("tatooine", "yivvits", 1, -2.34, 1.13, -12.11, 43, 1256022 ) -- Mos Espa waypoint -3056 2049
end

yivvits_convo_handler = Object:new {
	tstring = "myconversation"
 }

function yivvits_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	nextConversationScreen = MerchantSystem:nextConvoScreenInnards(conversationTemplate, conversingPlayer, selectedOption, YivvitsSP.relations, YivvitsSP.goods)
	
	return nextConversationScreen
end

function yivvits_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	conversationScreen = MerchantSystem:runScreenHandlerInnards(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, YivvitsSP.relations, YivvitsSP.goods)
	
	return conversationScreen
end
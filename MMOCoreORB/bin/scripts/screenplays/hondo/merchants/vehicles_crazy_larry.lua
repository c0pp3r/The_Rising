-- Legend of Hondo Merchant System
-- By R. Bassett Jr. (Tatwi) - www.tpot.ca
-- July 2015

local ObjectManager = require("managers.object.object_manager")

CrazyLarry = ScreenPlay:new {
	numberOfActs = 1, 	
	relations = { 
		{name="townsperson", npcStanding=-9000, priceAdjust=0}, -- Adjust price only
	},
	goods = {
		--{optName="kit", cost=500, itemName="Customization Kit", items={"object/tangible/item/vehicle_customization.iff"}}, 
		{optName="Atat House", cost=5000000, itemName="Atat House", items={"object/tangible/loot/loot_schematic/atat_house_loot_schem.iff"}},
		{optName="Bespin House", cost=5000000, itemName="Bespin House", items={"object/tangible/loot/loot_schematic/bespin_house_loot_schem.iff"}},
		{optName="Commando House", cost=5000000, itemName="Commando House", items={"object/tangible/loot/loot_schematic/commando_house_loot_schem.iff"}},
		--{optName="Ns Hut", cost=1000000, itemName="Ns Hut", items={"object/tangible/loot/loot_schematic/ns_hut_loot_schem.iff"}},
		{optName="Emperors House", cost=5000000, itemName="Emperors House", items={"object/tangible/loot/loot_schematic/emperors_house_loot_schem.iff"}},
		{optName="Generic Large Window1", cost=5000000, itemName="Generic Large Window1", items={"object/tangible/loot/loot_schematic/gen_lg_win_01_loot_schem.iff"}},
		{optName="Generic Large Window2", cost=5000000, itemName="Generic Large Window2", items={"object/tangible/loot/loot_schematic/gen_lg_win_02_loot_schem.iff"}},
		{optName="Generic Medium Window1", cost=5000000, itemName="Generic Medium Window1", items={"object/tangible/loot/loot_schematic/gen_md_win_01_loot_schem.iff"}},
		{optName="Generic Medium Window2", cost=5000000, itemName="Generic Medium Window2", items={"object/tangible/loot/loot_schematic/gen_md_win_02_loot_schem.iff"}},
		{optName="Generic Small Window1", cost=5000000, itemName="Generic Small Window1", items={"object/tangible/loot/loot_schematic/gen_sm_win_01_loot_schem.iff"}},
		{optName="Generic Small Window 2", cost=5000000, itemName="Generic Small Window 2", items={"object/tangible/loot/loot_schematic/gen_sm_win_02_loot_schem.iff"}},
		{optName="Hangar House", cost=5000000, itemName="Hangar House", items={"object/tangible/loot/loot_schematic/hangar_house_loot_schem.iff"}},
		{optName="Jabbas House", cost=5000000, itemName="Jabbas House", items={"object/tangible/loot/loot_schematic/jabbas_house_loot_schem.iff"}},
		{optName="Jedi House", cost=5000000, itemName="Jedi House", items={"object/tangible/loot/loot_schematic/jedi_house_loot_schem.iff"}},
		{optName="Musty House", cost=5000000, itemName="Musty House", items={"object/tangible/loot/loot_schematic/musty_house_loot_schem.iff"}},
		{optName="Naboo Small Window", cost=5000000, itemName="Naboo Small Window", items={"object/tangible/loot/loot_schematic/nab_sm_win_01_loot_schem.iff"}},
		{optName="Rebel House", cost=5000000, itemName="Rebel House", items={"object/tangible/loot/loot_schematic/rebel_house_loot_schem.iff"}},
		{optName="Relaxation House", cost=5000000, itemName="Relaxation House", items={"object/tangible/loot/loot_schematic/relaxation_house_loot_schem.iff"}},
		{optName="Sandcrawler House", cost=5000000, itemName="Sandcrawler House", items={"object/tangible/loot/loot_schematic/sandcrawler_house_loot_schem.iff"}},
		{optName="Sith House", cost=5000000, itemName="Sith House", items={"object/tangible/loot/loot_schematic/sith_house_loot_schem.iff"}},
		{optName="Tatooine Small Window", cost=5000000, itemName="Tatooine Small Window", items={"object/tangible/loot/loot_schematic/tat_sm_win_01_loot_schem.iff"}},
		{optName="Tree House", cost=5000000, itemName="Tree House", items={"object/tangible/loot/loot_schematic/tree_house_loot_schem.iff"}},
		{optName="Vehicle House", cost=5000000, itemName="Vehicle House", items={"object/tangible/loot/loot_schematic/vehicle_house_loot_schem.iff"}},
		{optName="Vipbunker House", cost=5000000, itemName="Vipbunker House", items={"object/tangible/loot/loot_schematic/vipbunker_house_loot_schem.iff"}},
		{optName="Yoda House", cost=5000000, itemName="Yoda House", items={"object/tangible/loot/loot_schematic/yoda_house_loot_schem.iff"}},
		{optName="Yt1300 House", cost=5000000, itemName="Yt1300 House", items={"object/tangible/loot/loot_schematic/yt1300_house_loot_schem.iff"}},

	},
}


registerScreenPlay("CrazyLarry", true)

function CrazyLarry:start() 
	--spawnMobile("tatooine", "crazylarry", 1, -2720.3, 5.0, 2260.4, -133, 0 ) -- Mos Espa 
	-- Load some decorations
	--spawnSceneObject("tatooine", "object/tangible/camp/camp_pavilion_s1.iff", -2720.3, 5.0, 2260.4, 0, 0, 0, 1, 0)
	--spawnSceneObject("tatooine", "object/tangible/furniture/all/frn_all_data_terminal_free_s2.iff", -2722.3, 5.0, 2262.85, 0, 0, 0, 1, 0)
	--spawnSceneObject("tatooine", "object/static/vehicle/static_speeder_bike.iff", -2725.44, 5.0, 2271.17, 0, 0.0255217, 0, 0.999674, 0)
	--spawnSceneObject("tatooine", "object/static/vehicle/static_swoop_bike.iff", -2722.25, 5.0, 2272.43, 0, 0.0582651, 0, 0.998301, 0)
	--spawnSceneObject("tatooine", "object/static/vehicle/e3/landspeeder.iff", -2725.62, 5.0, 2260.19, 0, 0.729313, 0, 0.68418, 0)
	--spawnSceneObject("tatooine", "object/mobile/vehicle/landspeeder_av21.iff", -2714.16, 5.0, 2260.32, 0, 0.641522, 0, 0.767105, 0)
	--spawnSceneObject("tatooine", "object/mobile/vehicle/speederbike_flash.iff", -2720.57, 5.0, 2254.14, 0, -0.103943, 0, 0.994583, 0)
end

crazylarry_convo_handler = Object:new {
	tstring = "myconversation"
 }

function crazylarry_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	nextConversationScreen = MerchantSystem:nextConvoScreenInnards(conversationTemplate, conversingPlayer, selectedOption, CrazyLarry.relations, CrazyLarry.goods)
	
	return nextConversationScreen
end

function crazylarry_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	conversationScreen = MerchantSystem:runScreenHandlerInnards(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, CrazyLarry.relations, CrazyLarry.goods)
	
	return conversationScreen
end
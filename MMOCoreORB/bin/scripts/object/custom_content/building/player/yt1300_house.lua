object_building_player_yt1300_house = object_building_player_shared_yt1300_house:new {
	lotSize = 10,
	baseMaintenanceRate = 80,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "yavin4", "dathomir", "kaas", "endor"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	publicStructure = 0,
	length = 1,
	width = 1,
	skillMods = {
		{"private_medical_rating", 125},
		{"private_buff_mind", 125},
		{"private_med_battle_fatigue", 15},
		{"jedi_saber_assembly", 50},
		{"jedi_saber_experimentation", 50},
		{"weapon_assembly", 50},
		{"weapon_experimentation", 50},
		{"crafting_general", 50},
		{"general_experimentation", 50},
		{"crafting_structure_general", 50},
		{"structure_experimentation", 50},
		{"crafting_food_general", 50},
		{"food_experimentation", 50},
		{"crafting_bio_engineer_creature", 50},
		{"bio_engineer_experimentation", 50},
		{"crafting_medicine_general", 50},
		{"combat_medicine_experimentation", 50},
		{"crafting_clothing_armor", 50},
		{"armor_experimentation", 50},
		{"engine_assembly", 50},
		{"engine_experimentation", 50},
		{"crafting_droid_general", 50},
		{"droid_experimentation", 50},
		{"medicine_assembly", 50},
		{"medicine_experimentation", 50}
	},
	childObjects = {
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 13.7399, z = 4.85844, y = 0.0375382, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -2.57692, z = -0.963074, y = 0.00377454, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1}, --Floor 1
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -2.57692, z = 5.19344, y = 0.00377454, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1}, --floor 2
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -5.96, z = 1.56, y = 1.82, ow = 0.25545, ox = 0, oz = 0, oy = 0.96682, cellid = -1, containmentType = -1}
	},
	shopSigns = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -5.96, z = 1.56, y = 1.82, ow = 0.25545, ox = 0, oz = 0, oy = 0.96682, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_01", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_02", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_03", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = -6.05, z = 2.62, y = 0.03, ow = 0.70711, ox = 0, oz = 0.70711, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_04", suiItem = "@player_structure:shop_sign4"}			
	}
}

ObjectTemplates:addTemplate(object_building_player_yt1300_house, "object/building/player/yt1300_house.iff")

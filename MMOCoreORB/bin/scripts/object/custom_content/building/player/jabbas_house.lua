object_building_player_jabbas_house = object_building_player_shared_jabbas_house:new {
	lotSize = 10,
	baseMaintenanceRate = 80,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "yavin4", "dathomir", "kaas", "endor"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 4,
	width = 2,
	publicStructure = 0,
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
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -2.73692, z = 14.666, y = 4.05877, ow = -1, ox = 0, oz = 0, oy = -8.74228e-08, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 0, z = 0.40893, y = -0.349841, ow = -4.37114e-08, ox = 0, oz = 0, oy = 1, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 0, z = 16.1126, y = -0.349841, ow = -4.37114e-08, ox = 0, oz = 0, oy = 1, cellid = 1, containmentType = -1},
			--{templateFile = "object/static/structure/tatooine/wall_pristine_tatooine_small_style_01.iff", x = 0.34, z = 15.31, y = -0.09, ow = 0.70711, ox = 0, oz = -0, oy = 0.70711, cellid = 1, containmentType = -1}, -- Lower Wall
			{templateFile = "object/tangible/component/structure/lightweight_turret.iff", x = -0.618712, z = 16.6, y = 0.77593, ow = -4.37114e-08, ox = 1, oz = 0, oy = 0, cellid = 1, containmentType = -1}, -- Lower Right Turret
			{templateFile = "object/tangible/component/structure/lightweight_turret.iff", x = 1.53094, z = 16.6, y = 0.77593, ow = -4.37114e-08, ox = 1, oz = 0, oy = 0, cellid = 1, containmentType = -1}, -- Lower Right Turret
			{templateFile = "object/tangible/component/structure/lightweight_turret.iff", x = -0.618712, z = 19.46, y = 0.77593, ow = 1, ox = 0, oz = 0, oy = 0, cellid = 1, containmentType = -1}, -- Upper Right Turret
			{templateFile = "object/tangible/component/structure/lightweight_turret.iff", x = 1.53094, z = 19.46, y = 0.77593, ow = 1, ox = 0, oz = 0, oy = 0, cellid = 1, containmentType = -1}, -- Upper Right Turret
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 0, z = 2.81, y = -3.65, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1}
	},
	shopSigns = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 0, z = 2.81, y = -3.65, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = 0, z = 5.19, y = -1.58, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_01", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = 0, z = 5.19, y = -1.58, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_02", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = 0, z = 5.19, y = -1.58, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_03", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = 0, z = 5.19, y = -1.58, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_04", suiItem = "@player_structure:shop_sign4"}	
	}
}
ObjectTemplates:addTemplate(object_building_player_jabbas_house, "object/building/player/jabbas_house.iff")

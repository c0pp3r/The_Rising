--		[[{"jedi_saber_assembly", 100},
--		{"jedi_saber_experimentation", 100},
--		{"weapon_assembly", 100},
--		{"weapon_experimentation", 100},
--		{"crafting_general", 100},
--		{"general_experimentation", 100},
--		{"crafting_structure_general", 100},
--		{"structure_experimentation", 100},
--		{"crafting_food_general", 100},
--		{"food_experimentation", 100},
--		{"crafting_bio_engineer_creature", 100},
--		{"bio_engineer_experimentation", 100},
--		{"crafting_medicine_general", 100},
--		{"combat_medicine_experimentation", 100},
--		{"crafting_clothing_armor", 100},
--		{"armor_experimentation", 100},
--		{"engine_assembly", 100},
--		{"engine_experimentation", 100},
--		{"crafting_droid_general", 100},
--		{"droid_experimentation", 100},
--		--{"", 100},]]
object_building_player_bespin_house = object_building_player_shared_bespin_house:new {
	lotSize = 10,
	baseMaintenanceRate = 80,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "yavin4", "dathomir", "kaas", "endor"},
	publicStructure = 0,
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 1,
	width = 1,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
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
			{templateFile = "object/tangible/terminal/terminal_bank.iff", x = -4.23739, z = 88.8804, y = -1.80391, ow = 0.819152, ox = 0, oz = 0, oy = 0.573576, cellid = 2, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_mission.iff", x = 4.27712, z = 88.8805, y = 1.78337, ow = -0.573577, ox = 0, oz = 0, oy = 0.819152, cellid = 2, containmentType = -1},
			{templateFile = "object/tangible/beta/beta_terminal_wound.iff", x = 2.156, z = 88.8801, y = -4.99758, ow = 0.984808, ox = 0, oz = 0, oy = -0.173648, cellid = 2, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -1.75983, z = 88.8802, y = 4.3361, ow = 0.173648, ox = 0, oz = 0, oy = 0.984808, cellid = 2, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 0.680352, z = 0.631912, y = 1.11112, ow = -0.258819, ox = 0, oy = 0.965926, oz = 0, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 0.680352, z = 88.8368, y = 1.11112, ow = -0.258819, ox = 0, oy = 0.965926, oz = 0, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 0.39, z = 3.00, y = -2.44, ow = 0.99144, ox = 0, oz = 0, oy = -0.13053, cellid = -1, containmentType = -1}
	},
	shopSigns = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 0.39, z = 3.00, y = -2.44, ow = 0.99144, ox = 0, oz = 0, oy = -0.13053, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = -0.532527, z = 0.531912, y = -5.45694, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_01", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = -0.532527, z = 0.531912, y = -5.45694, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_02", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = -0.532527, z = 0.531912, y = -5.45694, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_03", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = -0.532527, z = 0.531912, y = -5.45694, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_04", suiItem = "@player_structure:shop_sign4"}
	}
}

ObjectTemplates:addTemplate(object_building_player_bespin_house, "object/building/player/bespin_house.iff")

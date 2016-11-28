luke_elder = Creature:new {
	customName = "Luke (Elder)",
	faction = "",
	socialGroup = "dark_jedi",
	level = 227,
	chanceHit = 95,
	damageMin = 1870,
	damageMax = 3250,
	baseXp = 2163000,
	baseHAM = 408000,
	baseHAMmax = 654000,
	armor = 1,
	resists = {80,80,80,80,80,80,80,80,80},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ENEMY + ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/luke_skywalker.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_carbine_heroic_sd", chance = 500000},
				{group = "g_carbine_kun_massassi", chance = 500000},
				{group = "g_polearm_heroic_sd", chance = 500000},
				{group = "g_pvp_bf_knuckler", chance = 500000},
				{group = "g_sword_pvp_bf_01", chance = 500000},
				{group = "g_pistol_heroic_exar", chance = 500000},
				{group = "g_pistol_heroic_sd", chance = 500000},
				{group = "g_som_2h_sword_obsidian", chance = 500000},
				{group = "g_som_2h_sword_tulrus", chance = 500000},
				{group = "g_som_sword_obsidian", chance = 500000},
				{group = "weapons_all", chance = 4300000},
				{group = "g_ep3_chiss_poacher_backpack", chance = 100000},
				{group = "g_ep3_loot_necrosis", chance = 600000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "av_21_pp", chance = 1000000}
			},
			lootChance = 500000
		 },
		  {
			groups = {
				{group = "crystals_premium", chance = 2500000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "g_named_crystals", chance = 1000000},
				{group = "weapons_all", chance = 2500000}
		},
			lootChance = 10000000
		  },
	},
	weapons = {"dark_jedi_weapons_gen4"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(risinglsmaster)
}

CreatureTemplates:addCreatureTemplate(luke_elder, "luke_elder")

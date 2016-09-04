revan_quest = Creature:new {
	objectName = "@mob/creature_names:",
	customName = "Revan Decoy",
	socialGroup = "dark_jedi",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 85,
	damageMin = 5570,
	damageMax = 10550,
	specialDamageMult = 25,
	baseXp = 3005409,
	baseHAM = 1250000,
	baseHAMmax = 2500000,
	armor = 3,
	resists = {20,20,20,20,20,20,20,20,20},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/som/blackguard_wilder.iff"},
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
				{group = "redeed1", chance = 100000},
				{group = "g_ep3_loot_necrosis", chance = 600000}
			},
			lootChance = 10000000
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
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(revan_quest, "revan_quest")

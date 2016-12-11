darthvader_elder = Creature:new {
	objectName = "@mob/creature_names:",
	customName = "Darth Vader (Boss)",
	socialGroup = "dark_jedi",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 95,
	damageMin = 2570,
	damageMax = 4550,
	specialDamageMult = 1.25,
	baseXp = 3005409,
	baseHAM = 1054000,
	baseHAMmax = 1262900,
	armor = 2,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/darth_vader.iff"},
	lootGroups = {
		{
			groups = {
				{group = "saberhand24", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "podracer", chance = 500000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "saberhand24", chance = 3000000},
				{group = "weapons_all", chance = 2500000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "saberhand24", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = " cloak_of_hate", chance = 500000},
				{group = " cloak_of_hate_hood ", chance = 500000}  
			},
			lootChance = 1500000
		 },
		{
			groups = {
				{group = " saberhand24", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "g_ep3_chiss_poacher_backpack", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "death_watch_bunker_art", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "crystal_kenobis_legacy", chance = 600000},
				{group = "crystal_qui_gons_devotion", chance = 600000}
			},
			lootChance = 10000000
		}
	},{
			groups = {
				{group = "saberhand1", chance = 10000000}
			},
			lootChance = 10000000
		},
		},

	weapons = {"dark_jedi_weapons_gen4"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(risinglsmaster,risingpowermaster)
}

CreatureTemplates:addCreatureTemplate(darthvader_elder, "darthvader_elder")

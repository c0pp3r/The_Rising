palpatine_elder = Creature:new {
	objectName = "@mob/creature_names:",
	customName = "Palpatine (Boss)",
	socialGroup = "dark_jedi",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 95,
	damageMin = 2570,
	damageMax = 4550,
	baseXp = 3005409,
	baseHAM = 1054000,
	baseHAMmax = 1262900,
	specialDamageMult = 1.25,
	armor = 3,
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
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/palpatine.iff"},
	lootGroups = {
		{
			groups = {
				{group = "saberhand26", chance = 2000000},
				{group = "armor_attachments", chance = 4000000},
				{group = "clothing_attachments", chance = 4000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "holocron_dark", chance = 3500000},
				{group = "weapons_all", chance = 2500000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "holocron_dark", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "cloak_hate_group", chance = 1000000},  
			},
			lootChance = 1500000
		 },
		{
			groups = {
				{group = "saberhand26", chance = 2000000},
				{group = "armor_attachments", chance = 4000000},
				{group = "clothing_attachments", chance = 4000000}
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
				{group = "crystal_bondaras_folly", chance = 500000},
				{group = "crystal_windus_guile", chance = 500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "saberhand3", chance = 10000000}
			},
			lootChance = 10000000
		},
		},
	weapons = {"dark_jedi_weapons_gen4_onehand"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(risinglsmaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(palpatine_elder, "palpatine_elder")

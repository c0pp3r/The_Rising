revan = Creature:new {
	objectName = "@mob/creature_names:",
	customName = "Revan (Boss)",
	socialGroup = "dark_jedi",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 95,
	damageMin = 2500,
	damageMax = 4550,
	specialDamageMult = 1.30,
	baseXp = 300540,
	baseHAM = 754000,
	baseHAMmax = 962900,
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
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + STALKER+ KILLER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/som/blackguard_wilder.iff"},
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
	weapons = {"dark_jedi_weapons_gen4"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(risinglsmaster, risingpowermaster)
}

CreatureTemplates:addCreatureTemplate(revan, "revan")

master_kah = Creature:new {
	customName = "Master Kah",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 100,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 270849,
	baseHAM = 1321000,
	baseHAMmax = 1392000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,90},
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/master_kah.iff"},
	lootGroups = {
		{
			groups = {
				{group = "holocron_dark",  chance = 500000},
				{group = "holocron_light",  chance = 500000},
				{group = "crystals_premium",  chance = 2000000},
				{group = "council5_dark",  chance = 1000000},
				{group = "council4_dark",  chance = 1000000},
				{group = "council3_dark",  chance = 1000000},
				{group = "council2_dark",  chance = 1000000},
				{group = "council1_dark",  chance = 1000000},
				{group = "crystal_baass_wisdom",  chance = 1000000},
				{group = "crystal_banes_heart",  chance = 1000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(master_kah, "master_kah")

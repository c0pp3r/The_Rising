sariss = Creature:new {
	objectName = "",
	customName = "Sariss - Prophetess of the Dark Side",
	socialGroup = "imperial",
	faction = "imperial",
	pvpFaction = "imperial",
	level = 126,
	chanceHit = 4,
	damageMin = 745,
	damageMax = 1200,
	baseXp = 11953,
	baseHAM = 44000,
	baseHAMmax = 54000,
	armor = 0,
	resists = {40,40,40,40,40,40,40,40,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_emperors_hand_human_female_01.iff"},

	lootGroups = {
     	{
			groups = {
				{group = "holocron_dark", chance = 850000},
				{group = "holocron_light", chance = 850000},
				{group = "crystals_premium", chance = 1600000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "melee_weapons", chance = 1500000},
				{group = "armor_attachments", chance = 1100000},
				{group = "clothing_attachments", chance = 1100000},
				{group = "carbines", chance = 1000000}				
			},
			lootChance = 8500000
		}
	},
	weapons = {"dark_jedi_weapons_gen3"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(sariss, "sariss")

gifted_elite_gondula_shaman = Creature:new {
	customName = "Elite Gifted Gondula Shaman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "gondula_tribe",
	faction = "gondula_tribe",
	level = 300,
	chanceHit = 75.5,
	damageMin = 2745,
	damageMax = 4000,
	specialDamageMult = 25,
	baseXp = 4461,
	baseHAM = 120000,
	baseHAMmax = 225000,
	armor = 3,
	resists = {5,5,5,5,5,5,5,5,100},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	scale = 2,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HEALER + KILLER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_ewok_m_07.iff",
		"object/mobile/dressed_ewok_m_11.iff"},
	lootGroups = {
		{
			groups = {
				{group = "ewok", chance = 9000000},
				{group = "wearables_uncommon", chance = 1000000},
			},
			lootChance = 1920000
		}
	},
	weapons = {"captain_hassk_weapons"},
	conversationTemplate = "",
	attacks = merge(swordsmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(gifted_elite_gondula_shaman, "gifted_elite_gondula_shaman")

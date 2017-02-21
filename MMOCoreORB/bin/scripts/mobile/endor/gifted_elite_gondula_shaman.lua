gifted_elite_gondula_shaman = Creature:new {
	objectName = "Elite Gifted Gondula Shaman",
<<<<<<< Updated upstream
	randomNameType = NAME_GENERIC,
=======
	--randomNameType = NAME_GENERIC,
>>>>>>> Stashed changes
	randomNameTag = true,
	socialGroup = "gondula_tribe",
	faction = "gondula_tribe",
	level = 300,
	chanceHit = 75.5,
	damageMin = 1845,
	damageMax = 3200,
	specialDamageMult = 25,
	baseXp = 4461,
	baseHAM = 461000,
	baseHAMmax = 520000,
	armor = 3,
	resists = {40,40,40,40,40,40,40,40,100},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
<<<<<<< Updated upstream
=======
	scale = 2,
>>>>>>> Stashed changes
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

gondula_elite_matriarch = Creature:new {
	objectName = "Gondula Elite Matriarch",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "gondula_tribe",
	faction = "gondula_tribe",
	level = 300,
	chanceHit = 75.5,
	damageMin = 1845,
	damageMax = 3200,
	specialDamageMult = 25,
	baseXp = 831,
	baseHAM = 2400,
	baseHAMmax = 3000,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_ewok_f_05.iff"},
	lootGroups = {
		{
			groups = {
				{group = "ewok", chance = 10000000}
			},
			lootChance = 1300000
		}
	},
	weapons = {"ewok_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(gondula_elite_matriarch, "gondula_elite_matriarch")

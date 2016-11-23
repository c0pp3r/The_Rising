janta_chieftain = Creature:new {
	customName = "Janta Chieftain",
	socialGroup = "janta_tribe",
	pvpFaction = "",
	faction = "janta_tribe",
	level = 300,
	chanceHit = 75.25,
	damageMin = 2820,
	damageMax = 3750,
	baseXp = 27207,
	baseHAM = 445000,
	baseHAMmax = 1025000,
	armor = 3,
	resists = {75,75,75,75,75,75,75,75,45},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,
	scale = 2.0,

	templates = {"object/mobile/dantari_male.iff"},
		lootGroups = {
		{
			groups = {
				{group = "armor_all", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "weapons_all", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
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
				{group = "janta_rare", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "janta_rare", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "janta_rare", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "janta_rare", chance = 10000000}
			},
			lootChance = 10000000
		},
		},
	weapons = {"primitive_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(janta_chieftain, "janta_chieftain")

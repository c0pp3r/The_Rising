tusken_king = Creature:new {
	objectName = "@mob/creature_names:tusken_king",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 300,
	chanceHit = 95,
	damageMin = 3000,
	damageMax = 6000,
	specialDamageMult = 25,
	baseXp = 3005409,
	baseHAM = 854000,
	baseHAMmax = 1062900,
	armor = 1,
	resists = {75,75,75,75,75,75,75,75,75},
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

	templates = {"object/mobile/tusken_raider.iff"},
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
				{group = "saberhand25", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "saberhand1", chance = 1000000},
				{group = "saberhand13", chance = 1000000},
				{group = "saberhand14", chance = 1000000},
				{group = "saberhand15", chance = 1000000},
				{group = "saberhand16", chance = 1000000},
				{group = "saberhand17", chance = 1000000},
				{group = "saberhand18", chance = 1000000},
				{group = "saberhand19", chance = 1000000},
				{group = "saberhand20", chance = 1000000},
				{group = "saberhand21", chance = 1000000}
			},
			lootChance = 10000000
		},
		},
	weapons = {"tusken_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(fencermaster,riflemaster,tkamaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(tusken_king, "tusken_king")
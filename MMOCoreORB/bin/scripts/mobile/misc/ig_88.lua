ig_88 = Creature:new {
	objectName = "@mob/creature_names:ig_88",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 75,
	damageMin = 5645,
	damageMax = 7200,
	specialDamageMult = 25,
	baseXp = 3400290,
	baseHAM = 9000000,
	baseHAMmax = 1050000,
	armor = 3,
	resists = {60,60,60,60,60,60,60,60,60},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ENEMY + ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 3.0,

	templates = {"object/mobile/ig_88.iff"},
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
				{group = "av_21_pp", chance = 1000000}
			},
			lootChance = 500000
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
				{group = "saberhand22", chance = 5000000},
				{group = "saberhand23", chance = 5000000}
			},
			lootChance = 10000000
		},
		
	},
	weapons = {"st_sniper_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(riflemanmaster,bountyhuntermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ig_88, "ig_88")
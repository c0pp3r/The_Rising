palp_guard = Creature:new {
	objectName = "@mob/creature_names:",
	customName = "Royal Imperial Guard",
	socialGroup = "",
	faction = "",
	level = 300,
	chanceHit = 95,
	damageMin = 2570,
	damageMax = 4520,
	baseXp = 300000,
	baseHAM = 454000,
	baseHAMmax = 554000,
	armor = 1,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/royal_guard.iff"},
	lootGroups = {
	{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000}
			},
			lootChance = 10000000
	},
	{
			groups = {
				{group = "stormtrooper_common", chance = 10000000},
			},
			lootChance = 5000000
	},
	},
	weapons = {"object/weapon/melee/polearm/polearm_vibro_axe.iff"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster, brawlermaster)
}

CreatureTemplates:addCreatureTemplate(palp_guard, "palp_guard")

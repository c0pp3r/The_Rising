axkva_min = Creature:new {
	objectName = "@mob/creature_names:axkva_min",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 300,
	chanceHit = 30,
	damageMin = 1645,
	damageMax = 3000,
	specialDamageMult = 10,
	baseXp = 28549,
	baseHAM = 385000,
	baseHAMmax = 471000,
	armor = 3,
	resists = {100,35,35,100,100,100,100,100,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_axkva.iff"},
	lootGroups = {
		{
			groups = {
				{group = "crystals_premium",  chance = 1000000},
				{group = "nightsister_common",  chance = 1000000},
				{group = "pistols",  chance = 1000000},
				{group = "rifles",  chance = 1000000},
				{group = "carbines",  chance = 1000000},
				{group = "melee_weapons",  chance = 1000000},
				{group = "armor_attachments",  chance = 1000000},
				{group = "clothing_attachments",  chance = 1000000},
				{group = "redeed1",  chance = 1000000},
				{group = "redeed2",  chance = 1000000}
			}
		},
		{
			groups = {
				{group = "axkva_min", chance = 5000000},
				{group = "nightsister2",  chance = 5000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,swordsmanmaster,tkamaster,pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(axkva_min, "axkva_min")

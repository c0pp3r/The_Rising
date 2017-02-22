som_dark_jedi_minion_8 = Creature:new {
	customName = "Dark Jedi Enforcer",
	socialGroup = "darkside",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 23.5,
	damageMin = 1345,
	damageMax = 2500,
	baseXp = 25266,
	baseHAM = 261000,
	baseHAMmax = 320000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,-1},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/som_dark_jedi_minion_8.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_named_crystals", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "g_ep3_loot_heartstriker", chance = 2500000},
			},
			lootChance = 10000000,
		}
	},
	weapons = {"dark_jedi_weapons_gen3"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(som_dark_jedi_minion_8, "som_dark_jedi_minion_8")

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
	resists = {75,75,75,75,75,75,75,75,100},
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
				{group = "tusken_common", chance = 5000000},
                {group = "armor_attachments", chance = 2500000},
                {group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "forage_rare", chance = 2500000},
                {group = "armor_attachments", chance = 2500000},
                {group = "clothing_attachments", chance = 5000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "forage_food", chance = 2500000},
                {group = "armor_attachments", chance = 5000000},
                {group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "forage_bait", chance = 5000000},
                {group = "armor_attachments", chance = 2500000},
                {group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "hutt_exp_common", chance = 500000},
                {group = "armor_attachments", chance = 4500000},
                {group = "clothing_attachments", chance = 5000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_event_rifle_tusken_berserker", chance = 300000},
                {group = "g_rifle_tusken_elite", chance = 450000},
                {group = "g_rifle_t21_legendary", chance = 150000},
                {group = "g_lance_shock", chance = 300000},
                {group = "g_victor_baton_gaderiffi", chance = 300000},
			},
			lootChance = 10000000
		},
		},
	weapons = {"tusken_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(fencermaster,riflemaster,tkamaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(tusken_king, "tusken_king")
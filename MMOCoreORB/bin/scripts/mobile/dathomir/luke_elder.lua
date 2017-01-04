luke_elder = Creature:new {
	customName = "Luke (Elder)",
	faction = "",
	socialGroup = "dark_jedi",
	level = 300,
	chanceHit = 95,
	damageMin = 2570,
	damageMax = 4550,
	specialDamageMult = 1.25,
	baseXp = 3163000,
	baseHAM = 1054000,
	baseHAMmax = 1254000,
	armor = 2,
	resists = {80,80,80,80,80,80,80,80,80},
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

	templates = {"object/mobile/luke_skywalker.iff"},
	lootGroups = {
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
				{group = "clothing_attachments", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "holocron_light", chance = 3500000},
				{group = "weapons_all", chance = 2500000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "holocron_light", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "cloak_shatter_group", chance = 1000000},  
			},
			lootChance = 1500000
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
				{group = "death_watch_bunker_art", chance = 2500000},
				{group = "sivarra_reward_necklace", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "crystal_dawn_of_dagobah", chance = 500000},
				{group = "crystal_sunriders_destiny", chance = 500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "saberhand18", chance = 10000000}
			},
			lootChance = 10000000
		},
		},
	weapons = {"dark_jedi_weapons_gen4_twohand"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(risinglsmaster)
}

CreatureTemplates:addCreatureTemplate(luke_elder, "luke_elder")

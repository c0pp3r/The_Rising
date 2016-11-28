ep3_clone_relics_leia = Creature:new {
	customName = "Princess Leia",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "",
	faction = "",
	level = 300,
	chanceHit = 95.00,
	damageMin = 1700,
	damageMax = 3750,
	baseXp = 2000000,
	baseHAM = 450000,
	baseHAMmax = 650000,
	armor = 1,
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
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_clone_relics_leia.iff"},
	lootGroups = {
		{
			groups = {
				{group = "pearls_flawless", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		  {
			groups = {
				{group = "nyms_rare", chance = 3000000},
				{group = "aakuan_common", chance = 2000000},
				{group = "g_named_crystals", chance = 1000000},
				{group = "weapons_all", chance = 4000000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "jabba_theme_park_bib", chance = 900000},
				{group = "theme_park_reward_imperial_veers", chance = 900000},
				{group = "theme_park_reward_imperial_vader", chance = 900000},
				{group = "jabba_theme_park_porcellus", chance = 900000},
				{group = "jabba_theme_park_g5p0", chance = 900000},
				{group = "theme_park_reward_rebel_luke_skywalker", chance = 900000},
				{group = "theme_park_reward_rebel_mon_mothma", chance = 900000},
				{group = "task_reward_xaan_talmaron", chance = 900000},
				{group = "task_reward_vardias_tyne", chance = 900000},
				{group = "task_reward_pfilbee_jhorn", chance = 900000},
				{group = "hedon_istee_treasure", chance = 1000000}
			},
			lootChance = 10000000
		},
		  {
			groups = {
				{group = "g_ep3_chiss_poacher_backpack", chance = 10000000}
			},
			lootChance = 100000
		},
		},
	weapons = {"luke_skywalker_weapons"},
	conversationTemplate = "",
	attacks = merge(risinglsmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_clone_relics_leia, "ep3_clone_relics_leia")

booba_fett = Creature:new {
	customName = "Booba Fett",
	socialGroup = "mandalorian",
	faction = "",
	level = 300,
	chanceHit = 95.00,
	damageMin = 2250,
	damageMax = 4000,
	specialDamageMult = 25,
	baseXp = 300000,
	baseHAM = 400000,
	baseHAMmax = 500000,
	armor = 3,
	resists = {80,80,80,80,80,80,80,80,100},
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
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,
	scale = 1.55,

	templates = {"object/mobile/boba_fett.iff"},
  lootGroups = {
		{
			groups = {
				{group = "forage_rare", chance = 5000000},
                {group = "death_watch_bunker_ingredient_protective",  chance = 100000},
                {group = "death_watch_bunker_ingredient_binary",  chance = 100000},
                {group = "armor_attachments", chance = 2400000},
                {group = "clothing_attachments", chance = 2400000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "forage_medical_component", chance = 5000000},
                {group = "death_watch_bunker_ingredient_protective",  chance = 100000},
                {group = "death_watch_bunker_ingredient_binary",  chance = 100000},
                {group = "armor_attachments", chance = 2400000},
                {group = "clothing_attachments", chance = 2400000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
         		{group = "jetpack_parts", chance = 100000},
                {group = "death_watch_bunker_ingredient_protective",  chance = 100000},
                {group = "death_watch_bunker_ingredient_binary",  chance = 100000},
                {group = "armor_attachments", chance = 5000000},
                {group = "clothing_attachments", chance = 4700000}
			},
			lootChance = 10000000
	},
		{
			groups = {
				{group = "bounty_hunter_armor", chance = 4500000},
                {group = "g_quest_rifle_lightning", chance = 2000000},
                {group = "g_ep3_loot_retribution", chance = 500000},
                {group = "g_carbine_mandalorian", chance = 500000},
                {group = "g_blasterfist", chance = 500000},
                {group = "g_pistol_mandalorian", chance = 500000},
                {group = "g_quest_rifle_flame_thrower", chance = 500000},
                {group = "g_rifle_mandalorian", chance = 500000},
                {group = "g_carbine_bounty_ee3", chance = 500000}
			},
			lootChance = 10000000
	  },
	  {
			groups = {
				{group = "theme_park_reward_rebel_c_3po", chance = 2500000},
                {group = "jabba_theme_park_reelo", chance = 2500000},
                {group = "theme_park_reward_imperial_kaja", chance = 2500000},
                {group = "nyms_common", chance = 2500000}
			},
			lootChance = 10000000
	  },
	},
	weapons = {"boba_fett_weapons_rising"},
  conversationTemplate = "",
	attacks = merge(bountyhuntermaster,pistoleermaster,riflemanmaster,carbineermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(booba_fett, "booba_fett")

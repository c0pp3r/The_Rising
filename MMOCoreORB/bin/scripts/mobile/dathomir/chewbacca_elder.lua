chewbacca_elder = Creature:new {
	customName = "Chewbacca (Elder)",
	level = 300,
	chanceHit = 85,
	damageMin = 3000,
	damageMax = 5310,
	specialDamageMult = 25,
	baseXp = 2784900,
	baseHAM = 432100,
	baseHAMmax = 559200,
	armor = 3,
	resists = {75,75,75,75,75,75,75,75,95},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED+ INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/chewbacca.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_carbine_heroic_sd", chance = 500000},
				{group = "g_carbine_kun_massassi", chance = 500000},
				{group = "g_polearm_heroic_sd", chance = 750000},
				{group = "g_pvp_bf_knuckler", chance = 500000},
				{group = "g_sword_pvp_bf_01", chance = 750000},
				{group = "g_pistol_heroic_exar", chance = 500000},
				{group = "g_pistol_heroic_sd", chance = 500000},
				{group = "g_som_2h_sword_obsidian", chance = 500000},
				{group = "g_som_2h_sword_tulrus", chance = 500000},
				{group = "g_som_sword_obsidian", chance = 500000},
				{group = "weapons_all", chance = 4300000},
				{group = "g_ep3_loot_necrosis", chance = 600000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "cardeed1", chance = 1000000}
			},
			lootChance = 1000000
		 },
		  {
			groups = {
				{group = "clothing_attachments", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "droid_loot", chance = 1000000},
				{group = "weapons_all", chance = 2500000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "clothing_attachments", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "droid_loot", chance = 1000000},
				{group = "weapons_all", chance = 2500000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "clothing_attachments", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "droid_loot", chance = 1000000},
				{group = "weapons_all", chance = 2500000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "armor_all", chance = 2500000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "weapons_all", chance = 2500000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "armor_all", chance = 2500000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "weapons_all", chance = 2500000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "armor_all", chance = 2500000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "weapons_all", chance = 2500000}
		},
			lootChance = 10000000
		  },
		  
	},
	weapons = {"chewbacca_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(chewbacca_elder, "chewbacca_elder")

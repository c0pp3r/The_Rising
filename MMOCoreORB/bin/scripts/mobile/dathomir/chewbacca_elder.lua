chewbacca_elder = Creature:new {
	customName = "Chewbacca (Elder)",
	socialGroup = "gondula_tribe",
	faction = "gondula_tribe",
	level = 300,
	chanceHit = 85,
	damageMin = 3300,
	damageMax = 5610,
	specialDamageMult = 25,
	baseXp = 2784900,
	baseHAM = 632100,
	baseHAMmax = 800200,
	armor = 3,
	resists = {40,40,40,40,40,40,40,40,100},
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
	creatureBitmask = KILLER + PACK,
	optionsBitmask = AIENABLED+ INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/chewbacca.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_wookie_knuckler", chance = 500000},
				{group = "g_carbine_wookie_bowcaster_generic", chance = 750000},
				{group = "g_polearm_heroic_sd", chance = 750000},
				{group = "g_sword_avatar_wke_spiritblade", chance = 500000},
				{group = "g_lance_wookiee", chance = 750000},
				{group = "g_lance_kashyyk", chance = 500000},
				{group = "g_rifle_bowcaster_master", chance = 250000},
				{group = "g_lance_kaminoan", chance = 500000},
				{group = "forage_food", chance = 1600000},
				{group = "weapons_all", chance = 3900000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "cardeed1", chance = 1500000}
			},
			lootChance = 1000000
		 },
		  {
			groups = {
				{group = "clothing_attachments", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "wookie_loot", chance = 2500000},
				{group = "weapons_all", chance = 2500000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "clothing_attachments", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "wookie_loot", chance = 2500000},
				{group = "forage_food", chance = 2500000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "clothing_attachments", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "wookie_loot", chance = 1000000},
				{group = "forage_rare", chance = 2500000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "armor_all", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "weapons_all", chance = 2500000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "armor_all", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "weapons_all", chance = 2500000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "armor_all", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
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

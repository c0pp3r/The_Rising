hk47 = Creature:new {
	customName = "HK-47",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 100,
	damageMin = 1500,
	damageMax = 5500,
	specialDamageMult = 10,
	baseXp = 22344000,
	baseHAM = 560000,
	baseHAMmax = 690000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,90},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/hk47.iff"},
	lootGroups = {
		{
			groups = {
				{group = "redeed4", chance = 1000000},
				{group = "redeed2", chance = 1000000},
				{group = "crystals_premium", chance = 1000000},
				{group = "pearls_flawless", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "som_carbine_republic_sfor", chance = 2000000},
				{group = "g_lance_gcw_gand_shockprod", chance = 1000000},
				{group = "armor_attachments", chance = 1000000},
				{group = "crystal_kuns_blood", chance = 1000000}
			}
		},
		{
			groups = {
				{group = "mandalorian_schemes", chance = 5000000},
				{group = "bounty_hunter_schemes",  chance = 5000000}
			},
			lootChance = 10000000
		}
	},
	reactionStf = "@npc_reaction/slang",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(hk47, "hk47")
hk77 = Creature:new {
	customName = "HK-77",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 100,
	damageMin = 1500,
	damageMax = 5500,
	specialDamageMult = 10,
	baseXp = 19000000,
	baseHAM = 230000,
	baseHAMmax = 530000,
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

	templates = {"object/mobile/som/hk77.iff"},
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_commoners", chance = 6300000},
				{group = "death_watch_bunker_lieutenants", chance = 3500000},
				{group = "death_watch_bunker_ingredient_protective",  chance = 100000},
				{group = "death_watch_bunker_ingredient_binary",  chance = 100000}
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

CreatureTemplates:addCreatureTemplate(hk77, "hk77")

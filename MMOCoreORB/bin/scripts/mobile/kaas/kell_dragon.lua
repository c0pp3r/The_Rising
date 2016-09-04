kell_dragon = Creature:new {
	objectName = "",
	customName = "a Kell Dragon",
	socialGroup = "krayt",
	faction = "",
	level = 275,
	chanceHit = 27.25,
	damageMin = 1520,
	damageMax = 1750,
	baseXp = 26356,
	baseHAM = 120000,
	baseHAMmax = 138000,
	armor = 1,
	resists = {30,30,30,30,30,30,30,30,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 750,
	boneType = "bone_mammal",
	boneAmount = 675,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/canyon_krayt_dragon.iff"},
	scale = 0.45;
	lootGroups = {
		{
	        groups = {
				{group = "krayt_tissue_rare", chance = 3300000},
        {group = "krayt_dragon_common", chance = 3300000},
        {group = "pearls_flawless", chance = 3400000}			
			},
			lootChance = 5000000
		},
		{
	        groups = {
				{group = "composite_armor", chance = 2000000},
				{group = "ubese_armor", chance = 2000000},
				{group = "melee_two_handed", chance = 2000000},
				{group = "rifles", chance = 2000000},
				{group = "wearables_scarce", chance = 2000000},				
			},
			lootChance = 2500000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(kell_dragon, "kell_dragon")

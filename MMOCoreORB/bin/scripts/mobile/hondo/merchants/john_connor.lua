john_connor = Creature:new {
	objectName = "@mob/creature_names:commoner",
	customName = "John Connor (Rare Items Merchant)",
	socialGroup = "jabba",
	pvpFaction = "townsperson",
	faction = "jabba",
	level = 1,
	chanceHit = 0.25,
	damageMin = 50,
	damageMax = 55,
	baseXp = 113,
	baseHAM = 180,
	baseHAMmax = 220,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = 264, --for conversation
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_borvos_thug.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "johnconnor_template",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(john_connor, "john_connor")

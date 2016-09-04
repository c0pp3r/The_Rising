cloaked_figure = Creature:new {
	objectName = "",
	customName = "a Cloaked Figure",
	socialGroup = "",
	faction = "",
	level = 126,
	chanceHit = 4,
	damageMin = 745,
	damageMax = 1200,
	baseXp = 11953,
	baseHAM = 44000,
	baseHAMmax = 54000,
	armor = 0,
	resists = {80,80,80,80,80,80,80,80,-1},
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
	creatureBitmask = PACK + KILLER,
	diet = HERBIVORE,

	templates = {
		"object/mobile/tatooine_npc/hedon_istee.iff"},
	outfit = "prophet_kadann_outfit",
	scale = 1.1;
	lootGroups = {},
	weapons = {},
	conversationTemplate = "force_sensitive_intro_conv",
	attacks = merge(forcewielder)
}

CreatureTemplates:addCreatureTemplate(cloaked_figure, "cloaked_figure")

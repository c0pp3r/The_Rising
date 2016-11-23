nk_necrosis = Creature:new {
	--objectName = "@mob/creature_names:ep3_general_grievous",
	customName = "NK Necrosis",
	socialGroup = "NK",
	pvpFaction = "NK",
	faction = "",
	level = 300,
	chanceHit = 85,
	damageMin = 3600,
	damageMax = 6200,
	baseXp = 1600884,
	baseHAM = 185000,
	baseHAMmax = 325000,
	armor = 3,
	resists = {70,70,70,70,70,70,70,70,70},
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

	templates = {"object/mobile/ep3/general_grievous.iff"},
	lootGroups = {
		{
			groups = {
				{group = "holocron_dark", chance = 400000},
				{group = "holocron_light", chance = 400000},
				{group = "crystals_premium", chance = 600000},
				{group = "rifles", chance = 1300000},
				{group = "pistols", chance = 1300000},
				{group = "melee_weapons", chance = 1300000},
				{group = "armor_attachments", chance = 1200000},
				{group = "clothing_attachments", chance = 1200000},
				{group = "carbines", chance = 1300000},
				{group = "dark_jedi_common", chance = 1000000}
			}
		}
	},
	scale = 1.25,
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(risinglsmaster)
}

CreatureTemplates:addCreatureTemplate(nk_necrosis, "nk_necrosis")

prophet_kadann = Creature:new {
	objectName = "",
	customName = "Kadann - Supreme Prophet of the Dark Side",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
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
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	diet = HERBIVORE,

	templates = {
		"object/mobile/tatooine_npc/hedon_istee.iff"},
	outfit = "prophet_kadann_outfit",
	scale = 1.2;
	lootGroups = {
	    {
			groups = {
				{group = "holocron_dark", chance = 600000},
				{group = "holocron_light", chance = 600000},
				{group = "crystals_premium", chance = 600000},
				{group = "rifles", chance = 1500000},
				{group = "pistols", chance = 1500000},
				{group = "melee_weapons", chance = 1500000},
				{group = "armor_attachments", chance = 1100000},
				{group = "clothing_attachments", chance = 1100000},
				{group = "carbines", chance = 1500000}				
			},
			lootChance = 6000000
		}
	},
	weapons = {"dark_jedi_weapons_gen2"},
	attacks = merge(lightsabermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(prophet_kadann, "prophet_kadann")

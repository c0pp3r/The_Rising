vitiate = Creature:new {
	objectName = "",
	customName = "Essence of the Sith Emperor",
	socialGroup = "death_watch",
	faction = "",
	level = 200,
	chanceHit = 4,
	damageMin = 1745,
	damageMax = 2000,
	baseXp = 11953,
	baseHAM = 444000,
	baseHAMmax = 454000,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
  creatureBitmask = PACK + KILLER,
  optionsBitmask = 136,
  diet = HERBIVORE,

	templates = {
		"object/mobile/exar_kun.iff"},
	--outfit = "prophet_kadann_outfit",
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

CreatureTemplates:addCreatureTemplate(vitiate, "vitiate")

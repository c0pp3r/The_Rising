obi_wan_ghost = Creature:new {
	customName = "Obi Wan",
	socialGroup = "",
	pvpFaction = "",
	faction = "rebel",
	level = 300,
	chanceHit = 100,
	damageMin = 1400,
	damageMax = 5300,
	baseXp = 160880,
	baseHAM = 96000,
	baseHAMmax = 278000,
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

	templates = {"object/mobile/som/obi_wan_ghost.iff"},
	lootGroups = {
		{
			groups = {
				{group = "redeed1", chance = 1500000},
				{group = "redeed2", chance = 3000000},
				{group = "wearables_scarce", chance = 2000000},
				{group = "redeed3", chance = 750000},
				{group = "redeed4", chance = 750000},
				{group = "council4_dark", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "crystals_premium", chance = 500000}
			}
		}
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(obi_wan_ghost, "obi_wan_ghost")
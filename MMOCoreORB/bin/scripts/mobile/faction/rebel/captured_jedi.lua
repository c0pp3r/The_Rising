captured_jedi = Creature:new {
	objectName = "@mob/creature_names:light_jedi_sentinel",
	customName = "a Captured Jedi Fugitive",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 301,
	chanceHit = 300,
	damageMin = 245,
	damageMax = 500,
	baseXp = 26845,
	baseHAM = 16000,
	baseHAMmax = 32000,
	armor = 3,
	resists = {95,95,95,95,95,95,95,95,-1},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_jedi_trainer_old_human_male_01.iff",
		"object/mobile/dressed_jedi_trainer_chiss_male_01.iff",
		"object/mobile/dressed_jedi_trainer_nikto_male_01.iff",
		"object/mobile/dressed_jedi_trainer_twilek_female_01.iff",
		"object/mobile/dressed_tiberus_anderlock.iff",
		"object/mobile/dressed_neja_bertolo.iff"},
	lootGroups = {
		{
			groups = {
				{group = "holocron_light", chance = 10000000}
			},
			lootChance = 500000
		}
	},
	weapons = {"light_jedi_weapons"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(captured_jedi, "captured_jedi")

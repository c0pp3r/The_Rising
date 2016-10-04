cinderclaw = Creature:new {
	customName = "Cinderclaw",
	socialGroup = "darkside",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 100,
	damageMin = 2570,
	damageMax = 4550,
	baseXp = 30549,
	baseHAM = 440000,
	baseHAMmax = 529000,
	armor = 3,
	resists = {195,195,195,195,165,195,195,195,-1},
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/cinderclaw.iff"},
	scale = 3.0,
	lootGroups = {
		{
			groups = {
				{group = "g_ep3_loot_liquidsilver",  chance = 1500000},
				{group = "g_ep3_loot_deathrain", chance = 1500000},
				{group = "g_ep3_loot_dawnsorrow", chance = 1500000},
				{group = "g_carbine_underslung", chance = 1500000},
				{group = "g_carbine_rotary_underslung", chance = 1500000},
				{group = "g_massassiknuckler", chance = 1500000},
				{group = "g_lance_cryo",  chance = 1000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "g_lance_electric_polearm", chance = 2000000},
				{group = "g_ep3_loot_hydra", chance = 2000000},
				{group = "g_rifle_naktra_crystal", chance = 2000000},
				{group = "g_som_carbine_republic_sfor", chance = 2000000},
				{group = "g_sword_mace_junti", chance = 2000000}
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "crystal_banes_heart", chance = 600000},
				{group = "crystal_bnars_sacrifice", chance = 500000},
				{group = "crystal_bondaras_folly", chance = 500000},
				{group = "crystal_dawn_of_dagobah", chance = 600000},
				{group = "crystal_gallias_intuition", chance = 600000},
				{group = "crystal_horns_future", chance = 500000},
				{group = "crystal_kenobis_legacy", chance = 600000},
				{group = "crystal_kits_ferocity", chance = 600000},
				{group = "crystal_kuns_blood", chance = 500000},
				{group = "crystal_mauls_vengence", chance = 500000},
				{group = "crystal_mundis_response", chance = 500000},
				{group = "crystal_prowess_of_plo_koon", chance = 500000},
				{group = "crystal_qui_gons_devotion", chance = 600000},
				{group = "crystal_quintessence_0f_the_force", chance = 600000},
				{group = "crystal_strength_of_luminaria", chance = 600000},
				{group = "crystal_sunriders_destiny", chance = 600000},
				{group = "crystal_ulics_redemption", chance = 500000},
				{group = "crystal_windus_guile", chance = 600000}
			},
				lootChance = 7500000
		},
		{
			groups = {
				{group = "saberhand24", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"creature_spit_large_yellow"},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(cinderclaw, "cinderclaw")

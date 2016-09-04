looted_container = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "redeeditem1", weight = 2500000},
		{itemTemplate = "krayt_dragon_pearl_flawless", weight = 2500000},
		{itemTemplate = "jedi_holocron_dark", weight = 2500000},
		{itemTemplate = "jedi_holocron_light", weight = 2500000},

		-- Weapons (25% chance)
		{groupTemplate = "weapons_all", weight = 2500000},
		-- Weapons (25% chance)
		{groupTemplate = "clothing_attachments", weight = 2500000},
		-- Weapons (25% chance)
		{groupTemplate = "armor_attachments", weight = 2500000},
		-- Armors (25% chance)
		{groupTemplate = "armor_all", weight = 2500000},
		-- Clothing (25% chance)
		{groupTemplate = "wearables_all", weight = 2500000},
	}
}

addLootGroupTemplate("looted_container", looted_container)
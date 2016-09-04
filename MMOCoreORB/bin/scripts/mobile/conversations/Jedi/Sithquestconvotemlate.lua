

SithQuestConvoTemplate = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "SithQuestConvoTemplate",
	screens = {}
}

not_jedi= ConvoScreen:new {
	id = "not_jedi",
	leftDialog = "@quest_jedi:greeting", -- Leave me before I roast you like a Wamp Rat.
	stopConversation = "true",
	options = {
}
SithQuestConvoTemplate:addScreen(not_jedi);
----------
--sith initial convo
----------


step_1_start = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "@quest_Sith:step_1_start", -- Do you want power, true power to Strike down any who opose you?
	stopConversation = "false",
	options = {
	{"@quest_sith:yes", "step_1_start_yes"}, -- Yes Master.
	{"@quest_sith:no", "step_1_start_no"}, -- No thanks.
	}
}
SithQuestConvoTemplate:addScreen(step_1_start);



step_1_start_yes = ConvoScreen:new {
	id = "quest_1_start_yes",
	leftDialog = "@quest_sith:step_1_start_yes", -- Good. I will show you how to gain TRUE power.
	stopConversation = "false",
	options = {
		{"@quest_sith:yes", "step_1_description"}, -- Yes.
		{"@quest_sith:no", "step_1_start_no"}, -- No.
	}
}
SithQuestConvoTemplate:addScreen(step_1_start_yes);



step_1_start_no = ConvoScreen:new {
	id = "quest_1_start_no",
	leftDialog = "@quest_sith:step_1_start_no", -- I belive the Cantina Needs dancers, now leave me to my sins.
	stopConversation = "true",
	options = {}
}
SithQuestConvoTemplate:addScreen(step_1_start_no);




step_1_description = ConvoScreen:new {
	id = "step_1_description",
	leftDialog = "@quest_jedi:step_1_description", -- I grew up fighting to survive. The fight gave me the experience to survive. Do you have that experience.
	stopConversation = "true",
	options = {
		{"@quest_1_sith:yes", "step_1_experience"}, -- I have experience.
		{"@quest_sith:no", "step_1_no_experience"}, -- I am weak Master.
	}
}
SithQuestConvoTemplate:addScreen(step_1_description);




step_1_no_experience = ConvoScreen:new {
	id = "step_1_description",
	leftDialog = "@quest_sith:step_1_no_experience", -- If you come back without the experience I will kill you where you Stand.
	stopConversation = "true",
	options = {}
}
sithQuestConvoTemplate:addScreen(step_1_no_experience);





step_1_experience = ConvoScreen:new {
	id = "step_1_experience",
	leftDialog = "@quest_sith:step_1_experience", -- Good, Good. I can feel the Hate growing inside you.
	stopConversation = "true",
	options = {
		{"@quest_sith:yes", "step_2_start_yes"}, -- I am ready Master.
		{"@quest_sith:no", "step_2_Start_no"}, -- No thanks, ill just go craft sometihng.
	}
}
sithQuestConvoTemplate:addScreen(step_1_experience);





step_2_start_no = ConvoScreen:new {
	id = "step_2_start_no",
	leftDialog = "@quest_sith:step_2_start_no", -- Thats a good idea. Crafting is more your style.
	stopConversation = "true",
	options = {}
}
sithQuestConvoTemplate:addScreen(step_2_start_no);





step_2_start_yes = ConvoScreen:new {
	id = "step_2_start_yes",
	leftDialog = "@quest_sith:step_2_start_yes", -- When the Sith Rules the Galaxie they made Light Sabers of GREAT power. They used the Pearls of large lizards to focus and power them. Bring me one and I will let you live a day longer.
	stopConversation = "true",
	options = {
		{"@quest_sith:yes", "step_2_yes"}, -- I will find it Master.
		{"@quest_sith:no", "step_2_no"}, -- umm no thanks you crazy man.
	}
}
sithQuestConvoTemplate:addScreen(step_2_start_yes);




step_2_yes = ConvoScreen:new {
	id = "step_2_yes",
	leftDialog = "@quest_sith:step_2_yes", -- Very good, Here is your reward. This is an anchient crystal that will make an Saber even more powerful.
	stopConversation = "true",
	options = {
		{"@quest_sith:yes", "step_3_start_yes"}, -- Thank you Master.
	}
}
sithQuestConvoTemplate:addScreen(step_2_yes);






step_2_no = ConvoScreen:new {
	id = "step_2_no",
	leftDialog = "@quest_sith:step_2_no", -- Forgive me for the sins i will commit if you do not leave my sight.
	stopConversation = "true",
	options = {}
}
sithQuestConvoTemplate:addScreen(step_2_start_no);





step_3_start_yes = ConvoScreen:new {
	id = "step_3_start_yes",
	leftDialog = "@quest_sith:step_3_start_yes", -- Voilance is required. As Sith we use it to gain power. These beings know only Voilance. Show me that you are ready to show your power at all times.
	stopConversation = "true",
	options = {
		{"@quest_sith:yes", "step_3_yes"}, -- I am always ready Master
	}
}
sithQuestConvoTemplate:addScreen(step_3_start_yes);






step_3_yes = ConvoScreen:new {
	id = "step_3_yes",
	leftDialog = "@quest_sith:step_3_yes", -- Good, I see that you are ready. Return when you are ready for the next step.
	stopConversation = "true",
	options = {
		{"@quest_sith:yes", "step_4_start_yes"}, -- I am ready Master.
		{"@quest_sith:no", "step_4_start_no"}, -- No Thanks.
	}
}
sithQuestConvoTemplate:addScreen(step_3_yes);






step_4_start_no = ConvoScreen:new {
	id = "step_4_start_no",
	leftDialog = "@quest_sith:step_3_no", -- Maybe Cutting Haair is more your speed youngling.
	stopConversation = "true",
	options = {}

}
sithQuestConvoTemplate:addScreen(step_4_start_no);






step_4_start_yes = ConvoScreen:new {
	id = "step_4_start_yes",
	leftDialog = "@quest_sith:step_4_start_yes", -- The fool Jedi belive that knowlage is power. They are wrong, deprive them of their knowlage and bring it to me.
	stopConversation = "true",
	options = {
		{"@quest_jedi:yes", "step_4_holo_yes"}, -- I will find it Master.
	}
}
sithQuestConvoTemplate:addScreen(step_4_start_yes);





step_4_holo_yes = ConvoScreen:new {
	id = "step_4_holo_yes",
	leftDialog = "@quest_sith:step_4_holo_yes", -- Good, Here is what i promised you. This will bring you great power.
	stopConversation = "true",
	options = {
		{"@quest_sith:yes", "sith_end_yes"}, -- I will END THEM ALL.
	}
}
sithQuestConvoTemplate:addScreen(step_4_holo_yes);







sith_end_yes = ConvoScreen:new {
	id = "jedi_end_yes",
	leftDialog = "@quest_sith:sith_end_yes", -- I can feel the hate inside you, go and destroy them.
	stopConversation = "true",
	options = {}

}
sithQuestConvoTemplate:addScreen(sith_end_yes);

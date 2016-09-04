

jediQuestConvoTemplate = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "jediQuestConvoTemplate",
	screens = {}
}

not_jedi= ConvoScreen:new {
	id = "not_jedi",
	leftDialog = "@quest_jedi:greeting", -- I have no time to speak right now.
	stopConversation = "true",
	options = {
}
jediQuestConvoTemplate:addScreen(not_jedi);
----------
--jedi initial convo
----------


step_1_start = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "@quest_jedi:step_1_start", -- Welcome Jedi, in order to fight the Sith you must be ready to do what is required of you. Are you ready?
	stopConversation = "false",
	options = {
				{"@quest_jedi:step_1_start_yes"}, --Yes Master
				{"@quest_jedi:step_1_start_no"}, -- Pfft i got better things to do.
	}
}
jediQuestConvoTemplate:addScreen(step_1_start);



step_1_start_yes = ConvoScreen:new {
	id = "quest_1_start_yes",
	leftDialog = "@quest_jedi:step_1_start_yes", -- Good. You will need several things in order to fight the sith. are you willing to gather these things?
	stopConversation = "false",
	options = {
		{"@quest_jedi:yes", "step_1_description"}, -- Yes.
		{"@quest_jedi:no", "step_1_start_no"}, -- No.
	}
}
jediQuestConvoTemplate:addScreen(step_1_start_yes);



step_1_start_no = ConvoScreen:new {
	id = "quest_1_start_no",
	leftDialog = "@quest_jedi:step_1_start_no", -- I belive the Cantina Needs dancers, perhaps that is more to your ability.
	stopConversation = "true",
	options = {}
}
jediQuestConvoTemplate:addScreen(step_1_start_no);




step_1_description = ConvoScreen:new {
	id = "step_1_description",
	leftDialog = "@quest_jedi:step_1_description", -- A jedi Must have experience. Experience leads to proper decision making. Without experience then all the power in the universe cannot help you complete a simple task.
	stopConversation = "true",
	options = {
		{"@quest_jedi:yes", "step_1_experience"}, -- I have experience.
		{"@quest_jedi:no", "step_1_no_experience"}, -- I lack experience.
	}
}
jediQuestConvoTemplate:addScreen(step_1_description);




step_1_no_experience = ConvoScreen:new {
	id = "step_1_no_experience",
	leftDialog = "@quest_jedi:step_1_no_experience", -- Come back when you when you have the experience to continue.
	stopConversation = "true",
	options = {}
}
jediQuestConvoTemplate:addScreen(step_1_no_experience);





step_1_experience = ConvoScreen:new {
	id = "step_1_experience",
	leftDialog = "@quest_jedi:step_1_experience", -- Good, Good. I see you have experience. But there is more that is required. Are you ready to continue.
	stopConversation = "true",
	options = {
		{"@quest_jedi:yes", "step_2_start_yes"}, -- I am ready Master Jedi.
		{"@quest_jedi:no", "step_2_Start_no"}, -- No thanks, this is to much for me.
	}
}
jediQuestConvoTemplate:addScreen(step_1_experience);





step_2_start_no = ConvoScreen:new {
	id = "step_2_start_no",
	leftDialog = "@quest_jedi:step_2_start_no", -- Maybe try some crafting, Its safer that way.
	stopConversation = "true",
	options = {}
}
jediQuestConvoTemplate:addScreen(step_2_start_no);





step_2_start_yes = ConvoScreen:new {
	id = "step_2_start_yes",
	leftDialog = "@quest_jedi:step_2_start_yes", -- In the old days Jedi use Sabers of immense power. To achive such power they used many rare items from around the Galaxie. The first thing you will need is found on a terrible, and lumbering beast. This beast lives where there is very little water. Bring me its most prized possetion and i will share the next secret.
	stopConversation = "true",
	options = {
		{"@quest_jedi:yes", "step_2_yes"}, -- I will find it Master.
		{"@quest_jedi:no", "step_2_no"}, -- umm no thank you crazy man.
	}
}
jediQuestConvoTemplate:addScreen(step_2_start_yes);




step_2_yes = ConvoScreen:new {
	id = "step_2_yes",
	leftDialog = "@quest_jedi:step_2_yes", -- Very good, Here is your reward. This is an anchient crystal that will make an Saber even more powerful.
	stopConversation = "true",
	options = {
		{"@quest_jedi:yes", "step_3_start_yes"}, -- Thank you Master.
	}
}
jediQuestConvoTemplate:addScreen(step_2_yes);






step_2_no = ConvoScreen:new {
	id = "step_2_no",
	leftDialog = "@quest_jedi:step_2_no", -- The way of the Jedi is not for everyone.
	stopConversation = "true",
	options = {}
}
jediQuestConvoTemplate:addScreen(step_2_start_no);





step_3_start_yes = ConvoScreen:new {
	id = "step_3_start_yes",
	leftDialog = "@quest_jedi:step_3_start_yes", -- Voilance is sometimes required. As a Jedi you suld never seek it out, But when needed you must be ready to do what is required, and you must be ready at all times.
	stopConversation = "true",
	options = {
		{"@quest_jedi:yes", "step_3_yes"}, -- I am always ready Master
	}
}
jediQuestConvoTemplate:addScreen(step_3_start_yes);






step_3_yes = ConvoScreen:new {
	id = "step_3_yes",
	leftDialog = "@quest_jedi:step_3_yes", -- Good, I see that you are ready. Return when you are ready for the next step.
	stopConversation = "true",
	options = {
		{"@quest_jedi:yes", "step_4_start_yes"}, -- I will find it Master.
		{"@quest_jedi:no", "step_4_start_no"}, -- No Thanks.
	}
}
jediQuestConvoTemplate:addScreen(step_3_yes);






step_4_start_no = ConvoScreen:new {
	id = "step_4_start_no",
	leftDialog = "@quest_jedi:step_4_start_no", -- Maybe Cutting Haair is more your speed youngling.
	stopConversation = "true",
	options = {}

}
jediQuestConvoTemplate:addScreen(step_4_start_no);






step_4_start_yes = ConvoScreen:new {
	id = "step_4_start_yes",
	leftDialog = "@quest_jedi:step_4_start_yes", -- The Sith often carry items the hold thier teachings and knowlage, Bring me one so we may understand then better.
	stopConversation = "true",
	options = {
		{"@quest_jedi:yes", "step_4_holo_yes"}, -- I will find it Master.
	}
}
jediQuestConvoTemplate:addScreen(step_4_start_yes);





step_4_holo_yes = ConvoScreen:new {
	id = "step_4_holo_yes",
	leftDialog = "@quest_jedi:step_4_holo_yes", -- Good, Here is what i promised you. This will allow you to make one Battle saber.
	stopConversation = "true",
	options = {
		{"@quest_jedi:yes", "jedi_end_yes"}, -- Thank you Master Jedi. I will bring and end to the Sith.
	}
}
jediQuestConvoTemplate:addScreen(step_4_holo_yes);







jedi_end_yes = ConvoScreen:new {
	id = "jedi_end_yes",
	leftDialog = "@quest_jedi:jedi_end_yes", -- You are strong i can sense it. May the Force Be with you.
	stopConversation = "true",
	options = {}

}
jediQuestConvoTemplate:addScreen(jedi_end_yes);

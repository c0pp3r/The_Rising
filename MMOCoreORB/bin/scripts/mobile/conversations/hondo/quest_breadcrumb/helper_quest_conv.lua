-- Tarkin New Player Festival

helperquest_template = ConvoTemplate:new {
	initialScreen = "start",
	templateType = "Lua",
	luaClassHandler = "helperquest_convo_handler",
	screens = {}
}


helperquest_start = ConvoScreen:new {
  id = "start",
  leftDialog = "",
  customDialogText = "Hello, you ready for some adventure?. Need some help finding a Boss? ",
  stopConversation = "false",
  options = {
    {"Thanks, let's get started.", "quest_start"},
    {"Nah, I'm good...", "bye"}
  }
}
helperquest_template:addScreen(helperquest_start);

helperquest_bye = ConvoScreen:new {
  id = "bye",
  leftDialog = "",
  customDialogText = "Sure thing, boss.",
  stopConversation = "true",
  options = { 
  }
}
helperquest_template:addScreen(helperquest_bye);


-- Quest

helperquest_quest_start = ConvoScreen:new {
  id = "quest_start",
  leftDialog = "",
  customDialogText = "Here, take this communicator and head to the waypoints as I give them to you. Make sure you and your friends each Accept this Quest to increase your treasure.",
  stopConversation = "false",
  options = {
    {"Sounds good.", "quest_accept"}
  }
}
helperquest_template:addScreen(helperquest_quest_start);



helperquest_quest_accept = ConvoScreen:new {
  id = "quest_accept",
  leftDialog = "",
  customDialogText = "Have fun out there!",
  stopConversation = "true",
  options = { 
  }
}
helperquest_template:addScreen(helperquest_quest_accept);



helperquest_quest_active = ConvoScreen:new {
  id = "quest_active",
  leftDialog = "",
  customDialogText = "Didn't I give you a job to do?.",
  stopConversation = "false",
  options = { 
    {"You sure did, I will get right on it!", "bye"},
    {"I don't want to do this job anymore.", "confirm_reset"}
  }
}
helperquest_template:addScreen(helperquest_quest_active);

helperquest_confirm_reset = ConvoScreen:new {
  id = "confirm_reset",
  leftDialog = "",
  customDialogText = "Are you sure you want to abandon this mission?",
  stopConversation = "false",
  options = { 
    {"Yes, I am sure I want to abandon this mission.", "quest_reset"},
    {"No, I want to keep trying.", "bye"}
  }
}
helperquest_template:addScreen(helperquest_confirm_reset);


helperquest_quest_reset = ConvoScreen:new {
  id = "quest_reset",
  leftDialog = "",
  customDialogText = "Come back and see me if you would like to try again later.",
  stopConversation = "true",
  options = { 
  }
}
helperquest_template:addScreen(helperquest_quest_reset);


helperquest_quest_complete = ConvoScreen:new {
  id = "quest_complete",
  leftDialog = "",
  customDialogText = "So that's, that! Hope you enjoyed the Boss Encounter. Hey, while you're here, take this reward along with these Credits. Hope to see you and your friends again. This Quest Can Be Repeated.",
  stopConversation = "false",
  options = { 
    {"Will do, thanks.", "give_rewards"}
  }
}
helperquest_template:addScreen(helperquest_quest_complete);

helperquest_give_rewards = ConvoScreen:new {
  id = "give_rewards",
  leftDialog = "",
  customDialogText = "Feel free to come back and see me later if you would like to Retry The Boss.",
  stopConversation = "true",
  options = { 
  }
}
helperquest_template:addScreen(helperquest_give_rewards);

helperquest_no_space = ConvoScreen:new {
  id = "no_space",
  leftDialog = "",
  customDialogText = "Looks like you need to make some room in your inventory before I can give you a reward!",
  stopConversation = "true",
  options = { 
  }
}
helperquest_template:addScreen(helperquest_no_space);


-- Template Footer
addConversationTemplate("helperquest_template", helperquest_template);
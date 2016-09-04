-- Legend of Hondo Merchant System
-- By Tatwi www.tpot.ca 2015


eahtskcus_template = ConvoTemplate:new {
	initialScreen = "start",
	templateType = "Lua",
	luaClassHandler = "eahtskcus_convo_handler",
	screens = {}
}


eahtskcus_start = ConvoScreen:new {
  id = "start",
  leftDialog = "",
  customDialogText = "How may I help you?  Please look at the Armor I have, I am sure you will be happy!",
  stopConversation = "false",
  options = {
  	{"Sure thing, boss.", "shop"},
    {"Nope", "nope"}
  }
}
eahtskcus_template:addScreen(eahtskcus_start);


eahtskcus_shop = ConvoScreen:new {
  id = "shop",
  leftDialog = "",
  customDialogText = "My Armor is some of the best in teh Galazy. Over 50% resists to everything!  Don't forget, they can be sliced too!", 
  stopConversation = "false",
  options = { 
  }
}
eahtskcus_template:addScreen(eahtskcus_shop);


eahtskcus_confirm_purchase = ConvoScreen:new {
  id = "confirm_purchase",
  leftDialog = "",
  customDialogText = "Are you sure you would like to make this purchase?",
  stopConversation = "false",
  options = { 
  }
}
eahtskcus_template:addScreen(eahtskcus_confirm_purchase);


eahtskcus_bye = ConvoScreen:new {
  id = "bye",
  leftDialog = "",
  customDialogText = "Thank you for your purchase!!",
  stopConversation = "true",
  options = {
  }
}
eahtskcus_template:addScreen(eahtskcus_bye);


eahtskcus_nope = ConvoScreen:new {
  id = "nope",
  leftDialog = "",
  customDialogText = "Ooo, there is 10 seconds of my life I will never get back...",
  stopConversation = "true",
  options = { 
  }
}
eahtskcus_template:addScreen(eahtskcus_nope);


eahtskcus_get_lost = ConvoScreen:new {
  id = "get_lost",
  leftDialog = "",
  customDialogText = "You've got some nerve showing your face around here!",
  stopConversation = "false",
  options = {
	{"I'm leaving...", "get_lost_reply"}
  }
}
eahtskcus_template:addScreen(eahtskcus_get_lost);

eahtskcus_get_lost_reply = ConvoScreen:new {
  id = "get_lost_reply",
  leftDialog = "",
  customDialogText = "You're luck we're lettin' ya.",
  stopConversation = "true",
  options = {
  }
}
eahtskcus_template:addScreen(eahtskcus_get_lost_reply);


eahtskcus_faction_too_low = ConvoScreen:new {
  id = "faction_too_low",
  leftDialog = "",
  customDialogText = "Sorry, but I don't trust you enough to do business with you.",
  stopConversation = "false",
  options = {
	{"I get that. I really do... Bye", "bye"}
  }
}
eahtskcus_template:addScreen(eahtskcus_faction_too_low);


eahtskcus_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you do not have enough credits on hand to make this purchase.",
  stopConversation = "true",
  options = { 
  }
}
eahtskcus_template:addScreen(eahtskcus_insufficient_funds);


-- Template Footer
addConversationTemplate("eahtskcus_template", eahtskcus_template);

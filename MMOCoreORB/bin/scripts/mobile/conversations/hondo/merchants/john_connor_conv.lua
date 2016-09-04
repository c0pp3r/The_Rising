-- Legend of Hondo Merchant System
-- By Tatwi www.tpot.ca 2015


johnconnor_template = ConvoTemplate:new {
	initialScreen = "start",
	templateType = "Lua",
	luaClassHandler = "johnconnor_convo_handler",
	screens = {}
}


johnconnor_start = ConvoScreen:new {
  id = "start",
  leftDialog = "",
  customDialogText = "How may I help you?  Please look at these Item's I have, I am sure you will be happy!",
  stopConversation = "false",
  options = {
  	{"Sure thing, boss.", "shop"},
    {"Nope", "nope"}
  }
}
johnconnor_template:addScreen(johnconnor_start);


johnconnor_shop = ConvoScreen:new {
  id = "shop",
  leftDialog = "",
  customDialogText = "My Item's are some of the Rarest in the Galaxy!!", 
  stopConversation = "false",
  options = { 
  }
}
johnconnor_template:addScreen(johnconnor_shop);


johnconnor_confirm_purchase = ConvoScreen:new {
  id = "confirm_purchase",
  leftDialog = "",
  customDialogText = "Are you sure you would like to make this purchase?",
  stopConversation = "false",
  options = { 
  }
}
johnconnor_template:addScreen(johnconnor_confirm_purchase);


johnconnor_bye = ConvoScreen:new {
  id = "bye",
  leftDialog = "",
  customDialogText = "Thank you for your purchase!!",
  stopConversation = "true",
  options = {
  }
}
johnconnor_template:addScreen(johnconnor_bye);


johnconnor_nope = ConvoScreen:new {
  id = "nope",
  leftDialog = "",
  customDialogText = "Ooo, there is 10 seconds of my life I will never get back...",
  stopConversation = "true",
  options = { 
  }
}
johnconnor_template:addScreen(johnconnor_nope);


johnconnor_get_lost = ConvoScreen:new {
  id = "get_lost",
  leftDialog = "",
  customDialogText = "You've got some nerve showing your face around here!",
  stopConversation = "false",
  options = {
	{"I'm leaving...", "get_lost_reply"}
  }
}
johnconnor_template:addScreen(johnconnor_get_lost);

johnconnor_get_lost_reply = ConvoScreen:new {
  id = "get_lost_reply",
  leftDialog = "",
  customDialogText = "You'll be back...",
  stopConversation = "true",
  options = {
  }
}
johnconnor_template:addScreen(johnconnor_get_lost_reply);


johnconnor_faction_too_low = ConvoScreen:new {
  id = "faction_too_low",
  leftDialog = "",
  customDialogText = "Sorry, but I don't trust you enough to do business with you.",
  stopConversation = "false",
  options = {
	{"I get that. I really do... Bye", "bye"}
  }
}
johnconnor_template:addScreen(johnconnor_faction_too_low);


johnconnor_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you do not have enough credits on hand to make this purchase.",
  stopConversation = "true",
  options = { 
  }
}
johnconnor_template:addScreen(johnconnor_insufficient_funds);


-- Template Footer
addConversationTemplate("johnconnor_template", johnconnor_template);
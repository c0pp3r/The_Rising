-- Legend of Hondo Merchant System
-- By Tatwi www.tpot.ca 2015


cyanyaro_template = ConvoTemplate:new {
	initialScreen = "start",
	templateType = "Lua",
	luaClassHandler = "cyanyaro_convo_handler",
	screens = {}
}


cyanyaro_start = ConvoScreen:new {
  id = "start",
  leftDialog = "",
  customDialogText = "Hey, don't mind Nal. He's a bit thickheaded, but he makes for a loyal husband. Looking for some Bounty Hunter gear, are you?",
  stopConversation = "false",
  options = {
  	{"Yes, what can you tell me about it?", "help1"},
    {"Nope", "nope"}
  }
}
cyanyaro_template:addScreen(cyanyaro_start);


cyanyaro_shop = ConvoScreen:new {
  id = "shop",
  leftDialog = "",
  customDialogText = "Made your choice, have you? Money well spent if you ask me!", 
  stopConversation = "false",
  options = { 
  }
}
cyanyaro_template:addScreen(cyanyaro_shop);


cyanyaro_confirm_purchase = ConvoScreen:new {
  id = "confirm_purchase",
  leftDialog = "",
  customDialogText = "Are you sure you would like to make this purchase?",
  stopConversation = "false",
  options = { 
  }
}
cyanyaro_template:addScreen(cyanyaro_confirm_purchase);


cyanyaro_bye = ConvoScreen:new {
  id = "bye",
  leftDialog = "",
  customDialogText = "Come back real soon, darlin!",
  stopConversation = "true",
  options = {
  }
}
cyanyaro_template:addScreen(cyanyaro_bye);


cyanyaro_nope = ConvoScreen:new {
  id = "nope",
  leftDialog = "",
  customDialogText = "I'm not to be trifled with. Toyed with, perhaps, but not trifled.",
  stopConversation = "true",
  options = { 
  }
}
cyanyaro_template:addScreen(cyanyaro_nope);


cyanyaro_get_lost = ConvoScreen:new {
  id = "get_lost",
  leftDialog = "",
  customDialogText = "You've got some nerve showing your face around here!",
  stopConversation = "false",
  options = {
	{"Backing away slowly...", "get_lost_reply"}
  }
}
cyanyaro_template:addScreen(cyanyaro_get_lost);

cyanyaro_get_lost_reply = ConvoScreen:new {
  id = "get_lost_reply",
  leftDialog = "",
  customDialogText = "Speed it up, ugly!",
  stopConversation = "true",
  options = {
  }
}
cyanyaro_template:addScreen(cyanyaro_get_lost_reply);


cyanyaro_faction_too_low = ConvoScreen:new {
  id = "faction_too_low",
  leftDialog = "",
  customDialogText = "Sorry, but I don't trust you enough to do business with you.",
  stopConversation = "false",
  options = {
	{"I get that. I really do... Bye", "bye"}
  }
}
cyanyaro_template:addScreen(cyanyaro_faction_too_low);


cyanyaro_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you do not have enough credits on hand to make this purchase.",
  stopConversation = "true",
  options = { 
  }
}
cyanyaro_template:addScreen(cyanyaro_insufficient_funds);


cyanyaro_help1 = ConvoScreen:new {
  id = "help1",
  leftDialog = "",
  customDialogText = "What exactly would you like to know more about, hun?",
  stopConversation = "false",
  options = {
  	{"Tell me about the tools of the trade.", "tools"},
  	{"You sell Shock Trooper Armor, Is it worth the cost??", "shock_trooper"},
	{"You sell Shock Trooper Battle Armor, Why should I buy it?", "shock_trooper"},
	{"Is Clone Trooper Armor right for me?", "clone_trooper"},
	{"Death Trooper Armor? Does it smell like death??", "death_trooper"},
	{"Cursader Armor, If I buy this, does it support the Black Sun?", "crusader"},
	{"Scout Armor, will this help me get a promotion?", "scout"},
	{"Camo Scout Armor?, If I buy this, will I be able to see it?", "scout_camo"},
	{"Scout Armor Battle Worn, if it falls apart do I get a refund?", "scout_worn"},
	{"Snow Trooper Armor, will this keep me warm?", "snow"},
	{"Storm Trooper Battle Worn Armor, if it falls apart do I get a refund?", "storm_worn"},
	{"Swamp Trooper Armor, Will this stuff keep me alive?", "storm_swamp"},

  }
}
cyanyaro_template:addScreen(cyanyaro_help1);


cyanyaro_tools = ConvoScreen:new {
  id = "tools",
  leftDialog = "",
  customDialogText = "Don't know who sells'em to be honest, but if you ever hope to find your mark you're going to need to get some droids. Arakyd Probe Droids can be sent out to find what planet the mark is on and Seeker droids will find and track the mark when let loose on the same planet. Get a Droid Engineer on your crew to make some for you.",
  stopConversation = "false",
  options = {
  	{"I have some more questions.", "help1"},
  	{"Alright, show me your prices...", "shop"},
  	{"Yeah. Well, I have to be going.", "bye"}
  }
}
cyanyaro_template:addScreen(cyanyaro_tools);

cyanyaro_shock_trooper = ConvoScreen:new {
  id = "shock_trooper",
  leftDialog = "",
  customDialogText = "Some cool Armor I am sure you will LOVE!",
  stopConversation = "false",
  options = {
  	{"I have some more questions.", "help1"},
  	{"Alright, show me your prices...", "shop"},
  	{"Yeah. Well, I have to be going.", "bye"}
  }
}
cyanyaro_template:addScreen(cyanyaro_shock_trooper);

cyanyaro_shock_trooper_battle = ConvoScreen:new {
  id = "shock_trooper_battle",
  leftDialog = "",
  customDialogText = "Armor that is tried and true. Don't let the weathered appearance fool ya!",
  stopConversation = "false",
  options = {
  	{"I have some more questions.", "help1"},
  	{"Alright, show me your prices...", "shop"},
  	{"Yeah. Well, I have to be going.", "bye"}
  }
}
cyanyaro_template:addScreen(cyanyaro_shock_trooper_battle);

cyanyaro_clone_trooper = ConvoScreen:new {
  id = "clone_trooper",
  leftDialog = "",
  customDialogText = "Clone trooper armor included various types of armor worn by the clone forces of the Grand Army of the Republic during the Clone Wars. The armor was also worn by clone troopers following the creation of the Galactic Empire. Eventually, the various types of clone trooper armor were replaced by stormtrooper armor.",
  stopConversation = "false",
  options = {
  	{"I have some more questions.", "help1"},
  	{"Alright, show me your prices...", "shop"},
  	{"Yeah. Well, I have to be going.", "bye"}
  }
}
cyanyaro_template:addScreen(cyanyaro_clone_trooper);

cyanyaro_death_trooper = ConvoScreen:new {
  id = "death_trooper",
  leftDialog = "",
  customDialogText = "While rumors have circulated that restricted areas are being used to contain a biological threat, no official report has been confirmed or denied by High Command. Death Trooper Armor is Real..",
  stopConversation = "false",
  options = {
  	{"I have some more questions.", "help1"},
  	{"Alright, show me your prices...", "shop"},
  	{"Yeah. Well, I have to be going.", "bye"}
  }
}
cyanyaro_template:addScreen(cyanyaro_death_trooper);

cyanyaro_crusader = ConvoScreen:new {
  id = "crusader",
  leftDialog = "",
  customDialogText = "Deliberately, the Black Sun development team made sure each armor appeared distinctly different, so that neither the Empire nor the Rebellion would know that they were being armored from the same source. This subterfuge allowed for both sides to unknowingly support the Black Sun and increase the group's freedom while the Galactic Civil War raged. Each armor series was priced equally, resulting in similar protective characteristics.",
  stopConversation = "false",
  options = {
  	{"I have some more questions.", "help1"},
  	{"Alright, show me your prices...", "shop"},
  	{"Yeah. Well, I have to be going.", "bye"}
  }
}
cyanyaro_template:addScreen(cyanyaro_crusader);

cyanyaro_scout= ConvoScreen:new {
  id = "scout",
  leftDialog = "",
  customDialogText = "Scout Trooper armor is a type of reconnaissance armor and faction armor that can only be equipped by active duty Imperials, e.g., Combatant or Special Forces. However, if you are on leave you can still wear the armor, but if you take it off you have to be on duty to re-equip it.",
  stopConversation = "false",
  options = {
  	{"I have some more questions.", "help1"},
  	{"Alright, show me your prices...", "shop"},
  	{"Yeah. Well, I have to be going.", "bye"}
  }
}
cyanyaro_template:addScreen(cyanyaro_scout);

cyanyaro_scout_camo= ConvoScreen:new {
  id = "scout_camo",
  leftDialog = "",
  customDialogText = "It has the apperance of Scout Trooper armor, but has a green camo color.",
  stopConversation = "false",
  options = {
  	{"I have some more questions.", "help1"},
  	{"Alright, show me your prices...", "shop"},
  	{"Yeah. Well, I have to be going.", "bye"}
  }
}
cyanyaro_template:addScreen(cyanyaro_scout_camo);

cyanyaro_scout_worn= ConvoScreen:new {
  id = "scout_worn",
  leftDialog = "",
  customDialogText = "It has the apperance of Scout Trooper armor, but it is a kind of battle armor.",
  stopConversation = "false",
  options = {
  	{"I have some more questions.", "help1"},
  	{"Alright, show me your prices...", "shop"},
  	{"Yeah. Well, I have to be going.", "bye"}
  }
}
cyanyaro_template:addScreen(cyanyaro_scout_worn);

cyanyaro_snow= ConvoScreen:new {
  id = "snow",
  leftDialog = "",
  customDialogText = "Although well adapted to the intense cold found on planets such as Hoth, Toola and Rhen Var, the leg armor was weaker than standard armor; this was done so a snowtrooper could walk faster in the cold environment. ",
  stopConversation = "false",
  options = {
  	{"I have some more questions.", "help1"},
  	{"Alright, show me your prices...", "shop"},
  	{"Yeah. Well, I have to be going.", "bye"}
  }
}
cyanyaro_template:addScreen(cyanyaro_snow);

cyanyaro_storm_worn= ConvoScreen:new {
  id = "storm_worn",
  leftDialog = "",
  customDialogText = "Armor that has stood the test of time. Will keep the Clone in your life safe from the Rebellion Skum!",
  stopConversation = "false",
  options = {
  	{"I have some more questions.", "help1"},
  	{"Alright, show me your prices...", "shop"},
  	{"Yeah. Well, I have to be going.", "bye"}
  }
}
cyanyaro_template:addScreen(cyanyaro_storm_worn);

cyanyaro_storm_swamp= ConvoScreen:new {
  id = "storm_swamp",
  leftDialog = "",
  customDialogText = "Identified by their green armor, the swamp trooper is the variant of the Scout Trooper sent into jungle environments to combat the enemies of the Empire.",
  stopConversation = "false",
  options = {
  	{"I have some more questions.", "help1"},
  	{"Alright, show me your prices...", "shop"},
  	{"Yeah. Well, I have to be going.", "bye"}
  }
}
cyanyaro_template:addScreen(cyanyaro_storm_swamp);


-- Template Footer
addConversationTemplate("cyanyaro_template", cyanyaro_template);

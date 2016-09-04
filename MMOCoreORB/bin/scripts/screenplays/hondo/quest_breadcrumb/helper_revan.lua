-- Bread Crumb Quest: Help the player find the profession trainers.
-- R. Bassett Jr. www.tpot.ca
-- June 2016
--
-- This file can be used a template for other "bread crumb quests" that takes place on the same planet as its quest giver.
-- 1. Replace all instances of HelperrevanScreenPlay and helperrevan_convo_handler, and change the value of questName, className, with something unique.
-- 2. Make a custom character and conversation for that character. Keep in mind the important convo steps that trigger the quest actions.
-- 3. Spawn your character in the spawnMobiles() function.
-- 4. Customize the questConfig table to your liking.
-- That gets you a new quest with minimal effort. As the quest is self contained, not part of a standard framework, you can add new functionality as you see fit, confident that your mods won't break something else.
-- Note that this quest method does not require a client side update, provided your convo lua file is hand made with NPC customDialogText and reply options.
-- This system was originally based upon the race track logic created by SWGEmu.

local ObjectManager = require("managers.object.object_manager")


HelperrevanScreenPlay = ScreenPlay:new {
  numberOfActs = 1,
  screenplayName = "HelperrevanScreenPlay",
  states = {
    active = 2,
    complete = 4,
  }, 
  questConfig={
    planetName = "lok",
    questName="Helperrevan",  -- Internal quest , should be unique to the quest
    className="HelperrevanScreenPlay", -- Class name of this class
    questGiverName="Dread",
    timeResolution=0, -- number of decimal places to use for the time updates 0 = none
    expiryTime = 3600, --Amount of time in seconds that a player will be expired from the quest
    waypointRadius=3, -- size of the waypoint observer. 3 is good for on foot, 10 for when in a vehicle. 1 makes it kind of annoying to trigger.
    cashReward = 100000, -- set to 0 for no cash reward
    giveItems = "false", -- set false if there isn't an item reward.
    rewardType = "lootgroup", -- Pick One: all = give whole list, random = pick one item from the list, lootgroup = pick 1 item from the lootGroup
    lootGroup = "redeed1", -- any single loot group
    lootMinStackSize = 1, -- For stacks of loot when using a loot group
    lootMaxStackSize = 5, -- Size chosen at random between min and max
    itemRewards = {
      "",
      "",
    },
    waypoints = { 
      {x = -1622, y = -3067, wpName = "Darth Revan Encounter Quest", wpDesc = "Before We Get Started, It's Worth Mentioning That You Will Find Great Danger Ahead."},
      {x = -1783, y = -3086, wpName = "Darth Revan Encounter Entrance Has Been Located", wpDesc = "First Thing's, First... You Must Kill Everything In This Area"},
      {x = -1916, y = -3188, wpName = "Secure The Area", wpDesc = "Make Sure You Defeat All Enemies In This Area Be On The Look Out For Darth Revan."},
      {x = -2022, y = -3065, wpName = "Secure The Area", wpDesc = "Make Sure You Defeat All Enemies In This Area Be On The Look Out For Darth Revan."},
      {x = -1940, y = -2973, wpName = "Secure The Area", wpDesc = "Make Sure You Defeat All Enemies In This Area Be On The Look Out For Darth Revan."}, 
      {x = -1814, y = -3086, wpName = "Secure The Area", wpDesc = "Make Sure You Defeat All Enemies In This Area Be On The Look Out For Darth Revan."}, 
      {x = -1903, y = -3114, wpName = "Secure The Area", wpDesc = "Make Sure You Defeat All Enemies In This Area Be On The Look Out For Darth Revan."}, 
      {x = -1964, y = -3002, wpName = "Secure The Area", wpDesc = "Make Sure You Defeat All Enemies In This Area Be On The Look Out For Darth Revan."}, 
      {x = -1966, y = -3149, wpName = "Secure The Area", wpDesc = "Make Sure You Defeat All Enemies In This Area Be On The Look Out For Darth Revan."},
      {x = -1841, y = -3084, wpName = "Secure The Area", wpDesc = "Make Sure You Defeat All Enemies In This Area Be On The Look Out For Darth Revan."}, 
      {x = -1891, y = -3085, wpName = "Find The Boss Location", wpDesc = "Find Where Darth Revan Has Escaped Too. Kill Him When You Find Him."}, 
      {x = -1959, y = -3076, wpName = "Kill Darth Revan", wpDesc = "Make Sure You Defeat All Enemies In This Area Be On The Look Out For Darth Revan."}, 
      {x = -1804, y = -3086, wpName = "Secure The Compound", wpDesc = "Make Sure You Defeat All Enemies In This Are."},
      {x = 475, y = 4868, wpName = "Return To Quest Giver", wpDesc = "Turn In Quest!"}, -- final waypoint should be the quest giver, because quest ends only after talking to them.
    }
  } -- End questConfig1
}

registerScreenPlay("HelperrevanScreenPlay", true)

function HelperrevanScreenPlay:start()
  if (isZoneEnabled("lok")) then
    self:spawnSceneObjects()
    self:spawnMobiles()
    self:createBreadCrumbs()
  end
end

function HelperrevanScreenPlay:spawnSceneObjects()
    -- Decorations
end

function HelperrevanScreenPlay:spawnMobiles()
    -- Quest Giver
  --local pCoord = spawnMobile("lok", "helper_revan", 1, 471.692, 8.76214, 5506.58, 0, 0)
end



-- Handle Quest

function HelperrevanScreenPlay:enteredWaypoint(pActiveArea, pObject)
  return self:processWaypoint(pActiveArea, pObject)
end


function HelperrevanScreenPlay:createBreadCrumbs()
  for lc = 1, table.getn(self.questConfig.waypoints) , 1 do
    local pWaypointAA = spawnActiveArea(self.questConfig.planetName, "object/active_area.iff", self.questConfig.waypoints[lc].x, 0, self.questConfig.waypoints[lc].y, self.questConfig.waypointRadius, 0)

    if (pWaypointAA ~= nil) then
      createObserver(ENTEREDAREA, self.questConfig.className, "enteredWaypoint" , pWaypointAA)
    end
  end
end


function HelperrevanScreenPlay:startQuesting(pObject)
  ObjectManager.withCreatureAndPlayerObject(pObject, function(creatureObject, playerObject)
    clearScreenPlayData(pObject,self.questConfig.questName )
    self:createResetPlayerUnfinishedEvent(pObject)
    local waypointID = playerObject:addWaypoint(self.questConfig.planetName, self.questConfig.waypoints[1].wpName, "", self.questConfig.waypoints[1].x, self.questConfig.waypoints[1].y, WAYPOINTWHITE,true,true,WAYPOINTRACETRACK)
    local time = getTimestampMilli()
    writeScreenPlayData(pObject, self.questConfig.questName, "starttime", time)
    writeScreenPlayData(pObject, self.questConfig.questName, "waypoint", 1)
    creatureObject:setScreenPlayState(HelperrevanScreenPlay.states.active, HelperrevanScreenPlay.screenplayName) -- Set quest active
    creatureObject:sendSystemMessage("You have " .. (self :roundNumber(self.questConfig.expiryTime/60)) .. " minutes to complete your mission.")
    creatureObject:sendSystemMessage(self.questConfig.waypoints[1].wpName) -- Display first location
    creatureObject:playMusicMessage("sound/music_themequest_acc_general.snd")
  end)
end


function HelperrevanScreenPlay:processWaypoint(pActiveArea, pObject)
  if not SceneObject(pObject):isPlayerCreature() then
    return 0
  end

  local lastIndex =  readScreenPlayData(pObject, self.questConfig.questName, "waypoint")
  if lastIndex ~= "" then
    local index = self:getWaypointIndex(pActiveArea)
    if tonumber(lastIndex)==index then
      if tonumber(index)==table.getn(self.questConfig.waypoints) then
        self:finalWaypoint(pActiveArea, pObject)
      else
        self:ongoingWaypoints(pObject,index)
      end
      
    end
  end

  return 0
end

function HelperrevanScreenPlay:roundNumber(num)
  local mult = 10 ^ (self.questConfig.timeResolution or 0 )
  return math.floor(num * mult + 0.5) / mult
end


function HelperrevanScreenPlay:ongoingWaypoints(pObject,index)
  ObjectManager.withCreatureAndPlayerObject(pObject, function(creatureObject,playerObject)
    local waypointID = playerObject:addWaypoint(self.questConfig.planetName, self.questConfig.waypoints[index+1].wpName, "", self.questConfig.waypoints[index+1].x, self.questConfig.waypoints[index+1].y, WAYPOINTWHITE,true,true,WAYPOINTRACETRACK)
    writeScreenPlayData(pObject,self.questConfig.questName, "waypoint", index+1)
    
    -- Update Player on quest status 
    local timePassed = self:getLaptime(pObject) / 1000 -- miliseconds to seconds
    local timeLeft = self.questConfig.expiryTime - timePassed
    local timeType = " minutes"
    if (timeLeft < 60) then
      timeType = " seconds"
    else
      if (timeLeft < 120) then
        timeType = " minute" -- because pluralization matters people! :)
      end
      timeLeft = timeLeft / 60 -- show time in minutes
    end
    timeLeft = self:roundNumber(timeLeft) -- drop the decimal places
    
    creatureObject:sendSystemMessage("You have " .. timeLeft .. timeType .. " to complete " .. self.questConfig.questGiverName .. "'s mission.")
    -- Describe the waypoint the player arrived at...
    creatureObject:sendSystemMessage(self.questConfig.waypoints[index].wpDesc)
    
    -- Or tell them what the next waypoint is...
    --creatureObject:sendSystemMessage(self.questConfig.waypoints[index+1].wpName) 
    
    creatureObject:playMusicMessage("sound/music_themequest_acc_criminal.snd")
  end)
end


function HelperrevanScreenPlay:finalWaypoint(pActiveArea, pObject)
  ObjectManager.withCreatureAndPlayerObject(pObject, function(creatureObject,playerObject)
    -- get current waypoint
    index = table.getn(self.questConfig.waypoints)
    
    -- Play final waypoint description
    creatureObject:sendSystemMessage(self.questConfig.waypoints[index].wpDesc)
    
    -- Job is complete, turn off "Active", and turn on "Complete"
    creatureObject:removeScreenPlayState(HelperrevanScreenPlay.states.active, HelperrevanScreenPlay.screenplayName) 
    creatureObject:setScreenPlayState(HelperrevanScreenPlay.states.complete, HelperrevanScreenPlay.screenplayName)
    
    -- Remove the waypoint and play a sound!
    playerObject:removeWaypointBySpecialType(WAYPOINTRACETRACK)
    creatureObject:playMusicMessage("sound/mus_npe2_station_victory.snd")
    
    -- Player must talk to the quest giver to finish the quest
  end)
end


function HelperrevanScreenPlay:resetQuest(pObject)
  ObjectManager.withCreatureAndPlayerObject(pObject, function(creatureObject, playerObject)
    playerObject:removeWaypointBySpecialType(WAYPOINTRACETRACK)
    clearScreenPlayData(pObject,self.questConfig.questName )
    creatureObject:removeScreenPlayState(HelperrevanScreenPlay.states.active, HelperrevanScreenPlay.screenplayName)
    creatureObject:removeScreenPlayState(HelperrevanScreenPlay.states.complete, HelperrevanScreenPlay.screenplayName)
    creatureObject:sendSystemMessage("You have succesfullly abandoned " .. self.questConfig.questGiverName .. "'s mission.")
    creatureObject:playMusicMessage("sound/music_themequest_fail_imperial.snd")
  end)
end


function HelperrevanScreenPlay:endQuest(pObject)
  ObjectManager.withCreatureAndPlayerObject(pObject, function(creatureObject, playerObject)
    playerObject:removeWaypointBySpecialType(WAYPOINTRACETRACK)
    clearScreenPlayData(pObject,self.questConfig.questName )
    creatureObject:removeScreenPlayState(HelperrevanScreenPlay.states.active, HelperrevanScreenPlay.screenplayName)
    creatureObject:removeScreenPlayState(HelperrevanScreenPlay.states.complete, HelperrevanScreenPlay.screenplayName)
  end)
end


function HelperrevanScreenPlay:getLaptime(pObject)
  local startTime = readScreenPlayData(pObject, self.questConfig.questName, "starttime")
  local seconds = getTimestampMilli() - tonumber(startTime)
  writeScreenPlayData(pObject, self.questConfig.questName, "laptime",seconds)
  return seconds
end


function HelperrevanScreenPlay:getWaypointIndex(pActiveArea)
  return ObjectManager.withSceneObject(pActiveArea, function(sceneObject)
    local index = 0
    local wpX = sceneObject:getPositionX()
    local wpY = sceneObject:getPositionY()
    for lc = 1, table.getn(self.questConfig.waypoints) , 1 do
      if self.questConfig.waypoints[lc].x==wpX and self.questConfig.waypoints[lc].y==wpY then
        index = lc
        break
      end
    end
    return index
  end)
end

function HelperrevanScreenPlay:createResetPlayerUnfinishedEvent(pObject)
  createEvent(self.questConfig.expiryTime*1000, self.questConfig.className, "resetPlayerUnfinishedEventHandler",pObject)
end


function HelperrevanScreenPlay:resetPlayerUnfinishedEventHandler(pObject)
  ObjectManager.withCreatureAndPlayerObject(pObject, function(creatureObject,playerObject)
    local startTime = tonumber(readScreenPlayData(pObject, self.questConfig.questName , "starttime"))
    if not(startTime == nil) then 
      local time = getTimestampMilli()
      if  math.abs((time/1000) - (startTime/1000)) > (self.questConfig.expiryTime-5) then
        clearScreenPlayData(pObject,self.questConfig.questName )
        playerObject:removeWaypointBySpecialType(WAYPOINTRACETRACK)
        
        creatureObject:removeScreenPlayState(HelperrevanScreenPlay.states.active, HelperrevanScreenPlay.screenplayName)
        creatureObject:removeScreenPlayState(HelperrevanScreenPlay.states.complete, HelperrevanScreenPlay.screenplayName)
        creatureObject:sendSystemMessage("Sorry, you have failed to complete " .. self.questConfig.questGiverName .. "'s mission in time.")
        creatureObject:playMusicMessage("sound/music_themequest_fail_imperial.snd")
      end 
    end
  end)
end


function HelperrevanScreenPlay:checkSpace(creature)   
    local pInventory = creature:getSlottedObject("inventory")
    local inventory = LuaSceneObject(pInventory)
    local pieces = #HelperrevanScreenPlay.questConfig.itemRewards -- gets # of items in the reward list
            
    -- Check for room in inventory
    local numberOfItems = inventory:getContainerObjectsSize()
    local freeSpace = 80 - numberOfItems

    if (inventory:isContainerFullRecursive() == true and HelperrevanScreenPlay.questConfig.rewardType ~= "all") then
        -- Bail if the player doesn't have enough space in their inventory.
        creature:sendSystemMessage("You need 1 available inventory space to complete this quest.")
        return false
    elseif (HelperrevanScreenPlay.questConfig.rewardType == "all" and freeSpace < pieces) then
        -- Bail if the player doesn't have enough space in their inventory.
        creature:sendSystemMessage("You do not have enough inventory space to complete this quest. Please free up " .. pieces .. " spaces and speak to the quest giver again")
        return false
    end
    
    return true
end


function HelperrevanScreenPlay:giveReward(creature)
    -- Reset quest state
    creature:removeScreenPlayState(HelperrevanScreenPlay.states.active, HelperrevanScreenPlay.screenplayName)
    creature:removeScreenPlayState(HelperrevanScreenPlay.states.complete, HelperrevanScreenPlay.screenplayName)
    
    local pInventory = creature:getSlottedObject("inventory")
    local inventory = LuaSceneObject(pInventory)
    local pieces = #HelperrevanScreenPlay.questConfig.itemRewards -- gets # of items in the reward list

    -- Grant cash reward, if there is one
    if (HelperrevanScreenPlay.questConfig.cashReward ~= 0) then
        creature:addCashCredits(HelperrevanScreenPlay.questConfig.cashReward, true)
        creature:sendSystemMessage("You have earned " .. HelperrevanScreenPlay.questConfig.cashReward .. " credits.")
    end

    -- Grant item rewards, if there are any
    if (HelperrevanScreenPlay.questConfig.giveItems == "true") then
        if (HelperrevanScreenPlay.questConfig.rewardType == "random") then
            -- Give 1 random item from your list
            local rndNum = getRandomNumber(1, pieces)
            local pItem = giveItem(pInventory, HelperrevanScreenPlay.questConfig.itemRewards[rndNum], -1)
        elseif (HelperrevanScreenPlay.questConfig.rewardType == "all") then
            -- Give all items
            for itemCount = 1, pieces do
                local pItem = giveItem(pInventory, HelperrevanScreenPlay.questConfig.itemRewards[itemCount], -1)
            end
        end
    elseif (HelperrevanScreenPlay.questConfig.rewardType == "lootgroup") then
        -- Give loot group items
        local rndNum = getRandomNumber(HelperrevanScreenPlay.questConfig.lootMinStackSize, HelperrevanScreenPlay.questConfig.lootMaxStackSize)
        createLoot(pInventory, HelperrevanScreenPlay.questConfig.lootGroup, rndNum, true)
    end
    creature:sendSystemMessage("Loot was placed into your inventory!")
end


-- Handle Conversation

helperrevan_convo_handler = Object:new {
  tstring = "myconversation"
 }
 

function helperrevan_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
    local creature = LuaCreatureObject(conversingPlayer)
    local convosession = creature:getConversationSession()

    lastConversation = nil

    local conversation = LuaConversationTemplate(conversationTemplate)

    local nextConversationScreen 
    
    -- Player clicked NPC
    if ( conversation ~= nil ) then -- 1
        if ( convosession ~= nil ) then  -- 2
            local session = LuaConversationSession(convosession)

            if ( session ~= nil ) then -- 3
                lastConversationScreen = session:getLastConversationScreen()
            end -- 3 end
        end -- 2 end
        
        
        if ( lastConversationScreen == nil ) then -- 4
            -- Player clicked NPC for first time to start conversation
            local questActive = creature:hasScreenPlayState(HelperrevanScreenPlay.states.active, HelperrevanScreenPlay.screenplayName)
            local questComplete = creature:hasScreenPlayState(HelperrevanScreenPlay.states.complete, HelperrevanScreenPlay.screenplayName)

            if (questActive) then -- 5
                -- Quest is active
                nextConversationScreen = conversation:getScreen("quest_active")
            elseif (questComplete) then
                -- Quest completed
                nextConversationScreen = conversation:getScreen("quest_complete")  
            else
                -- Start the quest
                nextConversationScreen = conversation:getInitialScreen()
            end -- 5 end
        else
            -- Player is already talking to NPC
            local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
            local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)

            if (optionLink == "give_rewards") then -- 6
                -- If on the reward step, give reward or bail if player doesn't have enough inventory space for it.
                local enoughSpace = HelperrevanScreenPlay:checkSpace(creature)
                
                if (enoughSpace) then -- 7
                    HelperrevanScreenPlay:giveReward(creature)
                    HelperrevanScreenPlay:endQuest(conversingPlayer)
                else
                    nextConversationScreen = conversation:getScreen("no_space")
                end -- 7 end
            end -- 6 end
            
            -- Just play the next step in the conversation 
            nextConversationScreen = conversation:getScreen(optionLink)
        end -- 4 end
    end  -- 1 end
    
    return nextConversationScreen
end


function helperrevan_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
  -- Plays the screens of the conversation.
  local player = LuaSceneObject(conversingPlayer)
  local screen = LuaConversationScreen(conversationScreen)
  local screenID = screen:getScreenID()
  
  if ( screenID == "quest_accept" ) then
    HelperrevanScreenPlay:startQuesting(conversingPlayer)
  end
  
  if ( screenID == "quest_reset" ) then
    HelperrevanScreenPlay:resetQuest(conversingPlayer)
  end

  return conversationScreen
end
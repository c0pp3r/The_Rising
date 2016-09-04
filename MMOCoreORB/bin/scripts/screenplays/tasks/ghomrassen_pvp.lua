local ObjectManager = require("managers.object.object_manager")

ghomrassen_pvp = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "ghomrassen_pvp",
  	states = {onleave = 1, overt = 2},
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("ghomrassen_pvp", true)
  
function ghomrassen_pvp:start()
    	self:spawnActiveAreas()
end
  
function ghomrassen_pvp:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("ghomrassen", "object/active_area.iff", 0, 80, 0, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(7000)
	        createObserver(ENTEREDAREA, "ghomrassen_pvp", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "ghomrassen_pvp", "notifySpawnAreaLeave", pSpawnArea)
	    end
end
 
--checks if player enters the zone, and what to do with them.
function ghomrassen_pvp:notifySpawnArea(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isRebel()) then
			createEvent(1, "ghomrassen_pvp", "handlePvpZone", pMovingObject)
			player:sendSystemMessage("You have arrived on Ghomrassen.")
		else
			player:sendSystemMessage("You must be part of a Faction to travel to Ghomrassen!")
			player:teleport(corellia, -137, 28, -4722, 95)
		end
		return 0
	end)
end

--Handles the setting of factional status
function ghomrassen_pvp:handlePvpZone(pPlayer)
	ObjectManager.withCreatureAndPlayerObject(pPlayer, function(player, playerObject)
		deleteData(player:getObjectID() .. ":changingFactionStatus")
		if (playerObject:isCovert() or playerObject:isOnLeave()) then
			playerObject:setFactionStatus(2)
		end
	end)

end

--Simply sends a system message
function ghomrassen_pvp:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isRebel()) then
			player:sendSystemMessage("You have left Ghomrassen")
		end
		return 0
	end)
end

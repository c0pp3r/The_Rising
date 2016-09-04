stresstest_20120128 = ScreenPlay:new {
	numberOfActs = 1,
}

registerScreenPlay("stresstest_20120128", true)

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function stresstest_20120128:start()
	if (not isZoneEnabled("corellia")) or (not isZoneEnabled("taanab")) then
		return 0
	end
	
	self:spawnSceneObjects()
end

function stresstest_20120128:spawnSceneObjects()
	
	local pCollector1 = spawnSceneObject("corellia", "object/tangible/furniture/all/frn_all_technical_console_s01.iff", -171, 28, -4783 , 0, 1, 0, 0, 0)
	local collector1 = LuaSceneObject(pCollector1)
	local col1creo = LuaCreatureObject(pCollector1)
	col1creo:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#33ee77Travel to: Taanab")
	createObserver(OBJECTRADIALUSED, "stresstest_20120128", "teleportDWB", pCollector1)
	
	--Return from Taanab
	local pCollector2 = spawnSceneObject("taanab", "object/tangible/furniture/all/frn_all_technical_console_s01.iff", -6584, 2, 3184 , 0, 0.707107, 0, 0.707107, 0)
	local collector2 = LuaSceneObject(pCollector2)
	local col2creo = LuaCreatureObject(pCollector2)
	col2creo:setOptionsBitmask(264)
	collector2:setCustomObjectName("\\#ee3377Return to: Coronet")
	createObserver(OBJECTRADIALUSED, "stresstest_20120128", "teleportCnet", pCollector2)
	
end

function stresstest_20120128:teleportDWB(pCollector, pPlayer)
	local player = LuaSceneObject(pPlayer)
	player:switchZone("taanab", -6584, 2, 3184, 0)
	return 0
end

function stresstest_20120128:teleportCnet(pCollector, pPlayer)
	local player = LuaSceneObject(pPlayer)
	player:switchZone("corellia", -159, 28, -4774, 0)
	return 0
end

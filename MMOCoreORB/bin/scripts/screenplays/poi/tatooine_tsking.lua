local ObjectManager = require("managers.object.object_manager") --print("Object manager loaded for tsking")

tatooine_tsking= ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("tatooine_tsking", true) --print("registered tsking")

function tatooine_tsking:start()
	if (isZoneEnabled("tatooine")) then
		print("Tatooine Enabled: Spawning tsking")
		self:spawnMobiles()
	end
end

function tatooine_tsking:spawnMobiles()

	-- Outside The Tusken Bunker

	spawnMobile("tatooine", "tusken_warrior", 300, -3932.5, 60, 6314.92, 0, 0)

--Boss 1 Trigger
	local pPadawan = spawnMobile("tatooine", "tusken_warrior_quest", 1800, -3979.03, 60, 6299.71, 0, 0)
        	createObserver(OBJECTDESTRUCTION, "tatooine_tsking", "notifyPadawanDead", pPadawan)
--Boss 2 Trigger
	local ppPadawan = spawnMobile("tatooine", "tusken_warrior_quest", 1800, -3974.6, 60, 6278.32, 0, 0)
        	createObserver(OBJECTDESTRUCTION, "tatooine_tsking", "notifypPadawanDead", ppPadawan)
--Boss 3 Trigger
	local pppPadawan = spawnMobile("tatooine", "tusken_warrior_quest", 1800, -3962.44, 60, 6250.57, 0, 0)
        	createObserver(OBJECTDESTRUCTION, "tatooine_tsking", "notifyppPadawanDead", pppPadawan)
--Boss 4 Trigger
	local ppppPadawan = spawnMobile("tatooine", "tusken_warrior_quest", 1800, -4004.76, 60, 6248.81, 0, 0)
        	createObserver(OBJECTDESTRUCTION, "tatooine_tsking", "notifypppPadawanDead", ppppPadawan)
--Boss 5 Trigger
	local pppppPadawan = spawnMobile("tatooine", "tusken_warrior_quest", 1800, -4006.34, 60, 6278.37, 0, 0)
        	createObserver(OBJECTDESTRUCTION, "tatooine_tsking", "notifyppppPadawanDead", pppppPadawan)


end
--Phase 1 Of 5 Boss Instance
function tatooine_tsking:notifyPadawanDead(pPadawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("tatooine", "tusken_executioner_quest", 0, -3977.5, 60, 6252, 0, 0) print("spawned POTDS")
			spatialChat(pBoss, "To The Kings Side!.")
        return 0
end
--Phase 2 Of 5 Boss Instance
function tatooine_tsking:notifypPadawanDead(ppPadawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("tatooine", "tusken_executioner_quest", 0, -3984.21, 60, 6249.58, 0, 0) print("spawned POTDS")
			spatialChat(pBoss, "To The Kings Side!.")
        return 0
end
--Phase 3 Of 5 Boss Instance
function tatooine_tsking:notifyppPadawanDead(pppPadawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("tatooine", "tusken_executioner_quest", 0, -3986.01, 60, 6275.87, 0, 0) print("spawned POTDS")
			spatialChat(pBoss, "To The Kings Side!.")
        return 0
end
--Phase 4 Of 5 Boss Instance
function tatooine_tsking:notifypppPadawanDead(ppppPadawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("tatooine", "tusken_executioner_quest", 0, -3981.63, 60, 6292.17, 0, 0) print("spawned POTDS")
			spatialChat(pBoss, "To The Kings Side!.")
        return 0
end
--Phase 5 Of 5 Boss Instance
function tatooine_tsking:notifyppppPadawanDead(pppppPadawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("tatooine", "tusken_executioner_quest", 0, -3969.87, 60, 6284.58, 0, 0) print("spawned POTDS")
			spatialChat(pBoss, "To The Kings Side!.")
        return 0
end
local ObjectManager = require("managers.object.object_manager") --print("Object manager loaded for rvboss")

lok_rvboss= ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("lok_rvboss", true) --print("registered rvboss")

function lok_rvboss:start()
	if (isZoneEnabled("lok")) then
		print("Lok Enabled: Spawning rvboss")
		self:spawnMobiles()
	end
end

function lok_rvboss:spawnMobiles()

spawnMobile("lok", "revan_quest1", 3600, -1959, 12, -3075.66, 0, 0)
end

--[[
	Script Name		:	tomb_guard18.lua
	Script Purpose	:	Waypoint Path for tomb_guard18.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 08:38:18 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
     local Level = GetLevel(NPC)
    local level1 =15
    local level2 = 16
    local difficulty1 = 2
    local hp1 = 290
    local power1 = 100
    local difficulty2 = 2
    local hp2 = 345
    local power2 = 110
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 233.92, -6.86, -115.92, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 251.17, -6.86, -119.64, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.63, -6.86, -119.87, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.26, -6.86, -111.81, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 242.76, -6.86, -104.31, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.58, -6.86, -107.04, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.74, -6.86, -112.27, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 249.38, -6.86, -118.55, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.66, -6.86, -118, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 238.77, -6.86, -109.46, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 241.63, -6.86, -104.26, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 249.77, -6.86, -110.23, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.47, -6.86, -109.17, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 238.8, -6.86, -118.27, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 245.58, -6.86, -104.06, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 238.8, -6.86, -118.27, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.47, -6.86, -109.17, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 249.77, -6.86, -110.23, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 241.63, -6.86, -104.26, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 238.77, -6.86, -109.46, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.66, -6.86, -118, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 249.38, -6.86, -118.55, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.74, -6.86, -112.27, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.58, -6.86, -107.04, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 242.76, -6.86, -104.31, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.26, -6.86, -111.81, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.63, -6.86, -119.87, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 251.17, -6.86, -119.64, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 233.92, -6.86, -115.92, 2, math.random(0,8))
end



--[[
	Script Name		:	rifter_hatchling.lua
	Script Purpose	:	Waypoint Path for rifter_hatchling.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 02:09:39 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
          local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 7
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 150
    local difficulty2 = 6
    local hp2 = 215
    local power2 = 215
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
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -107.83, -0.11, -115.42, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -115.95, -0.07, -116.84, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.39, 0.57, -120.76, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129, -0.06, -129.81, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.86, -0.08, -136.35, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -139.91, -0.08, -137.96, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -145.73, -0.05, -138.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -145.46, -0.06, -146.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -145.33, -0.04, -138.44, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -157.21, -0.03, -135.24, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -160.03, -0.13, -119.62, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -180.88, 1.17, -120.49, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -181.46, -0.04, -110.12, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -187.08, -0.11, -105.19, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -197.38, -0.06, -103.6, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -197.79, -0.1, -100.69, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -197.38, -0.06, -103.6, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -187.08, -0.11, -105.19, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -181.46, -0.04, -110.12, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -180.88, 1.17, -120.49, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -160.03, -0.13, -119.62, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -157.21, -0.03, -135.24, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -145.33, -0.04, -138.44, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -145.46, -0.06, -146.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -145.73, -0.05, -138.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -139.91, -0.08, -137.96, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.86, -0.08, -136.35, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129, -0.06, -129.81, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.39, 0.57, -120.76, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -115.95, -0.07, -116.84, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -107.83, -0.11, -115.42, 2, math.random(0,20))
end



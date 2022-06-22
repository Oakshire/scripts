--[[
	Script Name		:	tomb_guard.lua
	Script Purpose	:	Waypoint Path for tomb_guard.lua
	Script Author	:	Devn00b
	Script Date		:	06/12/2020 12:02:27 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =14
    local level2 = 15
    local difficulty1 = 6
    local hp1 = 795
    local power1 = 240
    local difficulty2 = 6
    local hp2 = 920
    local power2 = 270
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
	MovementLoopAddLocation(NPC, -8.84, -0.09, -115.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -14.17, -0.15, -113.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -10.81, 0.32, -113.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -12.87, -0.09, -115.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -14.03, -0.14, -112.44, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -9.53, -0.06, -115.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -11.59, 0.21, -115.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -9.63, 0.21, -114.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -11.59, 0.21, -115.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -9.53, -0.06, -115.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -14.03, -0.14, -112.44, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -12.87, -0.09, -115.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -10.81, 0.32, -113.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -14.17, -0.15, -113.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -8.84, -0.09, -115.71, 2, math.random(0,10))
end



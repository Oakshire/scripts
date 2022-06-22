--[[
	Script Name		:	tomb_guard9.lua
	Script Purpose	:	Waypoint Path for tomb_guard9.lua
	Script Author	:	Devn00b
	Script Date		:	06/24/2020 03:19:17 PM
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
	MovementLoopAddLocation(NPC, 135.42, 0.02, -146.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 137.88, 0.02, -143.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 141.84, 0.06, -143.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 137.15, 0, -144.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 135.5, 0.02, -145.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 135.31, 0.02, -147.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 141.47, 0, -146.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 141.9, 0.01, -149.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 140.34, 0.05, -149.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 135.82, 0.04, -146.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 140.34, 0.05, -149.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 141.9, 0.01, -149.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 141.47, 0, -146.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 135.31, 0.02, -147.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 135.5, 0.02, -145.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 137.15, 0, -144.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 141.84, 0.06, -143.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 137.88, 0.02, -143.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 135.42, 0.02, -146.32, 2, math.random(0,10))
end



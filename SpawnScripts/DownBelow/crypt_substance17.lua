--[[
	Script Name		:	crypt_substance17.lua
	Script Purpose	:	Waypoint Path for crypt_substance17.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 04:09:51 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
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
    spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -156.74, -0.08, -127.03, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -157.23, -0.15, -111.53, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -156.26, 0.49, -107.53, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -149.68, -0.1, -92.05, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -143.19, -0.08, -78.86, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -146.02, -0.04, -85.06, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -162.28, -0.24, -76.88, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -168.37, -0.29, -74.12, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -162.28, -0.24, -76.88, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -146.02, -0.04, -85.06, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -143.19, -0.08, -78.86, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -149.68, -0.1, -92.05, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -156.26, 0.49, -107.53, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -157.23, -0.15, -111.53, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -156.74, -0.08, -127.03, 1, math.random(0,10))
end



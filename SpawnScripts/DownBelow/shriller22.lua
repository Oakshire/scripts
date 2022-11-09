--[[
	Script Name		:	shriller22.lua
	Script Purpose	:	Waypoint Path for shriller22.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 02:24:36 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 9
    local difficulty1 = 8
    local hp1 = 485
    local power1 = 200
    local difficulty2 = 8
    local hp2 = 555
    local power2 = 240
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
	MovementLoopAddLocation(NPC, -177.41, 2, -73.23, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -176.21, 2, -78.46, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -179.79, 2, -87.71, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -187.44, 2 -93.1, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -202.96, 2, -94.08, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -209.85, 2, -92.9, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -215.51, 2, -86.45, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -218.44, 2, -78.53, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -218.11, 2, -59.29, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -217.34, 2, -55.43, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -188.7, 2, -26.75, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -189.84, 2, -30.91, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -179.64, 2, -40.44, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -189.84, 2, -30.91, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -188.7, 2, -26.75, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -217.34, 2, -55.43, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -218.11, 2, -59.29, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -218.44, 2, -78.53, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -215.51, 2, -86.45, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -209.85, 2, -92.9, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -202.96, 2, -94.08, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -187.44, 2, -93.1, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -179.79, 2, -87.71, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -176.21, 2, -78.46, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -177.41, 2, -73.23, 1, math.random(0,3))
end



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
    local difficulty1 = 6
    local hp1 = 250
    local power1 = 250
    local difficulty2 = 6
    local hp2 = 285
    local power2 = 285
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
	MovementLoopAddLocation(NPC, -177.41, -0.27, -73.23, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -176.21, -0.23, -78.46, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -179.79, -0.31, -87.71, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -187.44, -0.03, -93.1, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -202.96, 0.5, -94.08, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -209.85, -0.04, -92.9, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -215.51, -0.08, -86.45, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -218.44, -0.01, -78.53, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -218.11, -0.01, -59.29, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -217.34, 0.21, -55.43, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -188.7, 0, -26.75, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -189.84, 0, -30.91, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -179.64, -0.05, -40.44, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -189.84, 0, -30.91, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -188.7, 0, -26.75, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -217.34, 0.21, -55.43, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -218.11, -0.01, -59.29, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -218.44, -0.01, -78.53, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -215.51, -0.08, -86.45, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -209.85, -0.04, -92.9, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -202.96, 0.5, -94.08, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -187.44, -0.03, -93.1, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -179.79, -0.31, -87.71, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -176.21, -0.23, -78.46, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -177.41, -0.27, -73.23, 2, math.random(0,3))
end



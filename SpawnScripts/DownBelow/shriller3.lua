--[[
	Script Name		:	shriller3.lua
	Script Purpose	:	Waypoint Path for shriller3.lua
	Script Author	:	Devn00b
	Script Date		:	05/09/2020 10:07:15 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 4
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 110
    local power1 = 55
    local difficulty2 = 6
    local hp2 = 130
    local power2 = 65
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
	MovementLoopAddLocation(NPC, -10.82, 2, -28.73, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -14.19, 2, -31.9, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -12.75, 2, -30.73, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -17.68, 2, -29.51, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.77, 2, -29.23, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -14.32, 2, -26.24, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -10.65, 2, -28.41, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -16.25, 2, -30.97, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -14.82, 2, -29.67, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -12.37, 2, -27.11, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.51, 2, -27.97, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -12.98, 2, -30.73, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.51, 2, -27.97, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -12.37, 2, -27.11, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -14.82, 2, -29.67, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -16.25, 2, -30.97, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -10.65, 2, -28.41, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -14.32, 2, -26.24, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.77, 2, -29.23, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -17.68, 2, -29.51, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -12.75, 2, -30.73, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -14.19, 2, -31.9, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -10.82, 2, -28.73, 1, math.random(0,2))
end



--[[
	Script Name		:	shriller20.lua
	Script Purpose	:	Waypoint Path for shriller20.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 01:56:20 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 6
    local hp1 = 200
    local power1 = 90
    local difficulty2 = 6
    local hp2 = 240
    local power2 = 100
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
	MovementLoopAddLocation(NPC, -161.84, 2, -96.82, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -160.73, 2, -90.79, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -163.05, 2, -89.73, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -164.93, 2, -95.46, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -162.01, 2, -90.66, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -160.52, 2, -97.63, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -159.87, 2, -91.9, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -159.6, 2, -93.72, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -160.26, 2, -95.46, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -163.94, 2, -94.57, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -161.42, 2, -93.1, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -162.52, 2, -90.69, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -163.29, 2, -92.92, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -161.5, -2, -93.45, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -162.21, 2, -95.7, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -159.9, 2, -94.94, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -162.21, 2, -95.7, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -161.5, 2, -93.45, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -163.29, 2, -92.92, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -162.52, 2, -90.69, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -161.42, 2, -93.1, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -163.94, 2, -94.57, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -160.26, 2, -95.46, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -159.6, 2, -93.72, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -159.87, 2, -91.9, 1, math.random(0,3))
	MovementLoopAddLocation(NPC, -160.52, 2, -97.63, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -162.01, 2, -90.66, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -164.93, 2, -95.46, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -163.05, 2, -89.73, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -160.73, 2, -90.79, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -161.84, 2, -96.82, 2, math.random(0,3))
end



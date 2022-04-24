--[[
	Script Name		:	shriller20.lua
	Script Purpose	:	Waypoint Path for shriller20.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 01:56:20 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
         local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 7
    local difficulty1 = 6
    local hp1 = 250
    local power1 = 250
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
	MovementLoopAddLocation(NPC, -161.84, -0.08, -96.82, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -160.73, -0.08, -90.79, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -163.05, -0.08, -89.73, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -164.93, -0.08, -95.46, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -162.01, -0.08, -90.66, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -160.52, 0, -97.63, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -159.87, -0.08, -91.9, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -159.6, -0.08, -93.72, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -160.26, -0.07, -95.46, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -163.94, -0.08, -94.57, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -161.42, -0.08, -93.1, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -162.52, -0.08, -90.69, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -163.29, -0.08, -92.92, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -161.5, -0.08, -93.45, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -162.21, -0.07, -95.7, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -159.9, -0.08, -94.94, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -162.21, -0.07, -95.7, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -161.5, -0.08, -93.45, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -163.29, -0.08, -92.92, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -162.52, -0.08, -90.69, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -161.42, -0.08, -93.1, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -163.94, -0.08, -94.57, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -160.26, -0.07, -95.46, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -159.6, -0.08, -93.72, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -159.87, -0.08, -91.9, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -160.52, 0, -97.63, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -162.01, -0.08, -90.66, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -164.93, -0.08, -95.46, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -163.05, -0.08, -89.73, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -160.73, -0.08, -90.79, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, -161.84, -0.08, -96.82, 2, math.random(0,3))
end



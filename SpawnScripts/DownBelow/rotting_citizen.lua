--[[
	Script Name		:	rotting_citizen.lua
	Script Purpose	:	Waypoint Path for rotting_citizen.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 12:33:15 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 9
    local level2 = 10
    local difficulty1 = 6
    local hp1 = 275
    local power1 = 110
    local difficulty2 = 6
    local hp2 = 370
    local power2 = 130
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
	MovementLoopAddLocation(NPC, -203.61, 0, -25.16, 2, 0)
	MovementLoopAddLocation(NPC, -196.09, 0, -36.25, 2, 0)
	MovementLoopAddLocation(NPC, -198.4, 0, -37.39, 2, 0)
	MovementLoopAddLocation(NPC, -190.34, 0, -22.9, 2, 0)
	MovementLoopAddLocation(NPC, -187.05, 0, -29.52, 2, 0)
	MovementLoopAddLocation(NPC, -196.76, 0, -16.13, 2, 0)
	MovementLoopAddLocation(NPC, -205.09, 0, -30.14, 2, 0)
	MovementLoopAddLocation(NPC, -199.87, 0, -25.62, 2, 0)
	MovementLoopAddLocation(NPC, -191.8, 0, -32.86, 2, 0)
	MovementLoopAddLocation(NPC, -197.23, 0, -38.21, 2, 0)
	MovementLoopAddLocation(NPC, -202.29, 0, -22.4, 2, 0)
	MovementLoopAddLocation(NPC, -197.23, 0, -38.21, 2, 0)
	MovementLoopAddLocation(NPC, -191.8, 0, -32.86, 2, 0)
	MovementLoopAddLocation(NPC, -199.87, 0, -25.62, 2, 0)
	MovementLoopAddLocation(NPC, -205.09, 0, -30.14, 2, 0)
	MovementLoopAddLocation(NPC, -196.76, 0, -16.13, 2, 0)
	MovementLoopAddLocation(NPC, -187.05, 0, -29.52, 2, 0)
	MovementLoopAddLocation(NPC, -190.34, 0, -22.9, 2, 0)
	MovementLoopAddLocation(NPC, -198.4, 0, -37.39, 2, 0)
	MovementLoopAddLocation(NPC, -196.09, 0, -36.25, 2, 0)
	MovementLoopAddLocation(NPC, -203.61, 0, -25.16, 2, 0)
end



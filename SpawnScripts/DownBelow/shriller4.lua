--[[
	Script Name		:	shriller4.lua
	Script Purpose	:	Waypoint Path for shriller4.lua
	Script Author	:	Devn00b
	Script Date		:	05/09/2020 10:22:34 PM
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
	MovementLoopAddLocation(NPC, -12.59, 8.94, -0.5, 1, 0)
	MovementLoopAddLocation(NPC, -11.89, 8.7, 3.46, 1, 0)
	MovementLoopAddLocation(NPC, -7.33, 7.72, 8.71, 1, 0)
	MovementLoopAddLocation(NPC, -2.87, 7.03, 10.37, 1, 0)
	MovementLoopAddLocation(NPC, 1.99, 6.33, 11.9, 1, 0)
	MovementLoopAddLocation(NPC, 7.68, 5.25, 8.34, 1, 0)
	MovementLoopAddLocation(NPC, 10.62, 4.7, 5, 1, 0)
	MovementLoopAddLocation(NPC, 11.19, 4.16, 0.68, 1, 0)
	MovementLoopAddLocation(NPC, 10.53, 3.28, -5.35, 1, 0)
	MovementLoopAddLocation(NPC, 7.32, 2.69, -9.09, 1, 0)
	MovementLoopAddLocation(NPC, 2.14, 2, -10.99, 1, 0)
	MovementLoopAddLocation(NPC, -2.1, 2, -12.25, 1, 0)
	MovementLoopAddLocation(NPC, -10.34, 2, -6.92, 1, 0)
	MovementLoopAddLocation(NPC, -7.76, 2, -4.93, 1, 0)
	MovementLoopAddLocation(NPC, -1.8, -2.56, -1.17, 1, 0)
	MovementLoopAddLocation(NPC, -7.76, 2, -4.93, 1, 0)
	MovementLoopAddLocation(NPC, -10.34, 2, -6.92, 1, 0)
	MovementLoopAddLocation(NPC, -2.1, 2, -12.25, 1, 0)
	MovementLoopAddLocation(NPC, 2.14, 2, -10.99, 1, 0)
	MovementLoopAddLocation(NPC, 7.32, 2.69, -9.09, 1, 0)
	MovementLoopAddLocation(NPC, 10.53, 5.28, -5.35, 1, 0)
	MovementLoopAddLocation(NPC, 11.19, 4.16, 0.68, 1, 0)
	MovementLoopAddLocation(NPC, 10.62, 4.7, 5, 1, 0)
	MovementLoopAddLocation(NPC, 7.68, 5.25, 8.34, 1, 0)
	MovementLoopAddLocation(NPC, 1.99, 6.33, 11.9, 1, 0)
	MovementLoopAddLocation(NPC, -2.87, 7.03, 10.37, 1, 0)
	MovementLoopAddLocation(NPC, -7.33, 7.72, 8.71, 1, 0)
	MovementLoopAddLocation(NPC, -11.89, 8.7, 3.46, 1, 0)
	MovementLoopAddLocation(NPC, -12.59, 8.94, -0.5, 1, 0)
end



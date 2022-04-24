--[[
	Script Name		:	shriller4.lua
	Script Purpose	:	Waypoint Path for shriller4.lua
	Script Author	:	Devn00b
	Script Date		:	05/09/2020 10:22:34 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 150
    local difficulty2 = 6
    local hp2 = 130
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
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -12.59, 6.94, -0.5, 2, 0)
	MovementLoopAddLocation(NPC, -11.89, 6.7, 3.46, 2, 0)
	MovementLoopAddLocation(NPC, -7.33, 5.72, 8.71, 2, 0)
	MovementLoopAddLocation(NPC, -2.87, 5.03, 10.37, 2, 0)
	MovementLoopAddLocation(NPC, 1.99, 4.33, 11.9, 2, 0)
	MovementLoopAddLocation(NPC, 7.68, 3.25, 8.34, 2, 0)
	MovementLoopAddLocation(NPC, 10.62, 2.7, 5, 2, 0)
	MovementLoopAddLocation(NPC, 11.19, 2.16, 0.68, 2, 0)
	MovementLoopAddLocation(NPC, 10.53, 1.28, -5.35, 2, 0)
	MovementLoopAddLocation(NPC, 7.32, 0.69, -9.09, 2, 0)
	MovementLoopAddLocation(NPC, 2.14, -0.09, -10.99, 2, 0)
	MovementLoopAddLocation(NPC, -2.1, -0.09, -12.25, 2, 0)
	MovementLoopAddLocation(NPC, -10.34, -0.09, -6.92, 2, 0)
	MovementLoopAddLocation(NPC, -7.76, -0.09, -4.93, 2, 0)
	MovementLoopAddLocation(NPC, -1.8, -4.56, -1.17, 2, 0)
	MovementLoopAddLocation(NPC, -7.76, -0.09, -4.93, 2, 0)
	MovementLoopAddLocation(NPC, -10.34, -0.09, -6.92, 2, 0)
	MovementLoopAddLocation(NPC, -2.1, -0.09, -12.25, 2, 0)
	MovementLoopAddLocation(NPC, 2.14, -0.09, -10.99, 2, 0)
	MovementLoopAddLocation(NPC, 7.32, 0.69, -9.09, 2, 0)
	MovementLoopAddLocation(NPC, 10.53, 1.28, -5.35, 2, 0)
	MovementLoopAddLocation(NPC, 11.19, 2.16, 0.68, 2, 0)
	MovementLoopAddLocation(NPC, 10.62, 2.7, 5, 2, 0)
	MovementLoopAddLocation(NPC, 7.68, 3.25, 8.34, 2, 0)
	MovementLoopAddLocation(NPC, 1.99, 4.33, 11.9, 2, 0)
	MovementLoopAddLocation(NPC, -2.87, 5.03, 10.37, 2, 0)
	MovementLoopAddLocation(NPC, -7.33, 5.72, 8.71, 2, 0)
	MovementLoopAddLocation(NPC, -11.89, 6.7, 3.46, 2, 0)
	MovementLoopAddLocation(NPC, -12.59, 6.94, -0.5, 2, 0)
end



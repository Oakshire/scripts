--[[
	Script Name		:	shriller.lua
	Script Purpose	:	Waypoint Path for shriller.lua
	Script Author	:	Devn00b
	Script Date		:	04/28/2020 10:23:04 PM
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
	MovementLoopAddLocation(NPC, -10.2, 6.24, 5.87, 2, 1)
	MovementLoopAddLocation(NPC, -10.13, -0.08, -32.44, 2, 0)
	MovementLoopAddLocation(NPC, -5.94, -0.12, -33.58, 2, 0)
	MovementLoopAddLocation(NPC, 0.11, 0.52, -26.58, 2, 0)
	MovementLoopAddLocation(NPC, -0.2, -0.08, -24.3, 2, 0)
	MovementLoopAddLocation(NPC, 2.67, -0.09, -11.51, 2, 0)
	MovementLoopAddLocation(NPC, 7.39, 0.67, -9.46, 2, 0)
	MovementLoopAddLocation(NPC, 10.21, 1.28, -5.55, 2, 0)
	MovementLoopAddLocation(NPC, 11.2, 2.18, 0.74, 2, 0)
	MovementLoopAddLocation(NPC, 8.55, 3.11, 7.67, 2, 0)
	MovementLoopAddLocation(NPC, 7.55, 3.43, 9.92, 2, 0)
	MovementLoopAddLocation(NPC, -3.61, 5.16, 11.03, 2, 0)
	MovementLoopAddLocation(NPC, -9.18, 6.06, 6.98, 2, 0)
	MovementLoopAddLocation(NPC, -10.2, 6.24, 5.87, 2, 1)
	MovementLoopAddLocation(NPC, -9.18, 6.06, 6.98, 2, 0)
	MovementLoopAddLocation(NPC, -3.61, 5.16, 11.03, 2, 0)
	MovementLoopAddLocation(NPC, 7.55, 3.43, 9.92, 2, 0)
	MovementLoopAddLocation(NPC, 8.55, 3.11, 7.67, 2, 0)
	MovementLoopAddLocation(NPC, 11.2, 2.18, 0.74, 2, 0)
	MovementLoopAddLocation(NPC, 10.21, 1.28, -5.55, 2, 0)
	MovementLoopAddLocation(NPC, 7.39, 0.67, -9.46, 2, 0)
	MovementLoopAddLocation(NPC, 2.67, -0.09, -11.51, 2, 0)
	MovementLoopAddLocation(NPC, -0.2, -0.08, -24.3, 2, 0)
	MovementLoopAddLocation(NPC, 0.11, 0.52, -26.58, 2, 0)
	MovementLoopAddLocation(NPC, -5.94, -0.12, -33.58, 2, 0)
	MovementLoopAddLocation(NPC, -10.13, -0.08, -32.44, 2, 0)
	MovementLoopAddLocation(NPC, -10.2, 6.24, 5.87, 2, 1)
end



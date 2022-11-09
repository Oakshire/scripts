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
	MovementLoopAddLocation(NPC, -10.2, 8.24, 5.87, 1, 1)
	MovementLoopAddLocation(NPC, -10.13, 2.08, -32.44, 1, 0)
	MovementLoopAddLocation(NPC, -5.94, 2, -33.58, 1, 0)
	MovementLoopAddLocation(NPC, 0.11, 2, -26.58, 1, 0)
	MovementLoopAddLocation(NPC, -0.2, 2, -24.3, 1, 0)
	MovementLoopAddLocation(NPC, 2.67, 2, -11.51, 1, 0)
	MovementLoopAddLocation(NPC, 7.39, 2, -9.46, 1, 0)
	MovementLoopAddLocation(NPC, 10.21, 3.28, -5.55, 1, 0)
	MovementLoopAddLocation(NPC, 11.2, 4.18, 0.74, 1, 0)
	MovementLoopAddLocation(NPC, 8.55, 5.11, 7.67, 1, 0)
	MovementLoopAddLocation(NPC, 7.55, 5.43, 9.92, 1, 0)
	MovementLoopAddLocation(NPC, -3.61, 7.16, 11.03, 1, 0)
	MovementLoopAddLocation(NPC, -9.18, 8.06, 6.98, 1, 0)
	MovementLoopAddLocation(NPC, -10.2, 8.24, 5.87, 1, 1)
	MovementLoopAddLocation(NPC, -9.18, 8.06, 6.98, 1, 0)
	MovementLoopAddLocation(NPC, -3.61, 7.16, 11.03, 1, 0)
	MovementLoopAddLocation(NPC, 7.55, 5.43, 9.92, 1, 0)
	MovementLoopAddLocation(NPC, 8.55, 5.11, 7.67, 1, 0)
	MovementLoopAddLocation(NPC, 11.2, 4.18, 0.74, 1, 0)
	MovementLoopAddLocation(NPC, 10.21, 3.28, -5.55, 1, 0)
	MovementLoopAddLocation(NPC, 7.39, 2, -9.46, 1, 0)
	MovementLoopAddLocation(NPC, 2.67, 2, -11.51, 1, 0)
	MovementLoopAddLocation(NPC, -0.2, 2, -24.3, 1, 0)
	MovementLoopAddLocation(NPC, 0.11, 2, -26.58, 1, 0)
	MovementLoopAddLocation(NPC, -5.94, 2, -33.58, 1, 0)
	MovementLoopAddLocation(NPC, -10.13, 2, -32.44, 1, 0)
	MovementLoopAddLocation(NPC, -10.2, 8.24, 5.87, 1, 1)
end



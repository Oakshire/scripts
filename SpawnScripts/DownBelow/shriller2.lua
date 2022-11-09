--[[
	Script Name		:	shriller2.lua
	Script Purpose	:	Waypoint Path for shriller2.lua
	Script Author	:	Devn00b
	Script Date		:	05/09/2020 10:03:29 PM
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
	MovementLoopAddLocation(NPC, -23.1, 2, -70.54, 1, 0)
	MovementLoopAddLocation(NPC, -19.88, 2, -74.04, 1, 0)
	MovementLoopAddLocation(NPC, -21.41, 2, -72.78, 1, 0)
	MovementLoopAddLocation(NPC, -20.11, 2, -71.47, 1, 0)
	MovementLoopAddLocation(NPC, -20.14, 2, -67.57, 1, 0)
	MovementLoopAddLocation(NPC, -16.37, 2, -70.86, 1, 0)
	MovementLoopAddLocation(NPC, -18.19, 2, -70.43, 1, 0)
	MovementLoopAddLocation(NPC, -20.5, 2, -70.94, 1, 0)
	MovementLoopAddLocation(NPC, -18.15, 2, -72.75, 1, 0)
	MovementLoopAddLocation(NPC, -21.53, 2, -69.38, 1, 0)
	MovementLoopAddLocation(NPC, -20.16, 2, -67.5, 1, 0)
	MovementLoopAddLocation(NPC, -23.22, 2, -70.34, 1, 0)
	MovementLoopAddLocation(NPC, -19.74, 2, -74.36, 1, 0)
	MovementLoopAddLocation(NPC, -15.84, 2, -71.4, 1, 0)
	MovementLoopAddLocation(NPC, -22.51, 2, -70.9, 1, 0)
	MovementLoopAddLocation(NPC, -15.84, 2, -71.4, 1, 0)
	MovementLoopAddLocation(NPC, -19.74, 2, -74.36, 1, 0)
	MovementLoopAddLocation(NPC, -23.22, 2, -70.34, 1, 0)
	MovementLoopAddLocation(NPC, -20.16, 2, -67.5, 1, 0)
	MovementLoopAddLocation(NPC, -21.53, 2, -69.38, 1, 0)
	MovementLoopAddLocation(NPC, -18.15, 2, -72.75, 1, 0)
	MovementLoopAddLocation(NPC, -20.5, 2, -70.94, 1, 0)
	MovementLoopAddLocation(NPC, -18.19, 2, -70.43, 1, 0)
	MovementLoopAddLocation(NPC, -16.37, 2, -70.86, 1, 0)
	MovementLoopAddLocation(NPC, -20.14, 2, -67.57, 1, 0)
	MovementLoopAddLocation(NPC, -20.11, 2, -71.47, 1, 0)
	MovementLoopAddLocation(NPC, -21.41, 2, -72.78, 1, 0)
	MovementLoopAddLocation(NPC, -19.88, 2, -74.04, 1, 0)
	MovementLoopAddLocation(NPC, -23.1, 2, -70.54, 1, 0)
end



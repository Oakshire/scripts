--[[
	Script Name		:	shriller2.lua
	Script Purpose	:	Waypoint Path for shriller2.lua
	Script Author	:	Devn00b
	Script Date		:	05/09/2020 10:03:29 PM
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
	MovementLoopAddLocation(NPC, -23.1, -0.08, -70.54, 2, 0)
	MovementLoopAddLocation(NPC, -19.88, -0.08, -74.04, 2, 0)
	MovementLoopAddLocation(NPC, -21.41, -0.08, -72.78, 2, 0)
	MovementLoopAddLocation(NPC, -20.11, -0.08, -71.47, 2, 0)
	MovementLoopAddLocation(NPC, -20.14, -0.1, -67.57, 2, 0)
	MovementLoopAddLocation(NPC, -16.37, -0.08, -70.86, 2, 0)
	MovementLoopAddLocation(NPC, -18.19, 0.95, -70.43, 2, 0)
	MovementLoopAddLocation(NPC, -20.5, -0.08, -70.94, 2, 0)
	MovementLoopAddLocation(NPC, -18.15, -0.08, -72.75, 2, 0)
	MovementLoopAddLocation(NPC, -21.53, -0.09, -69.38, 2, 0)
	MovementLoopAddLocation(NPC, -20.16, -0.1, -67.5, 2, 0)
	MovementLoopAddLocation(NPC, -23.22, -0.08, -70.34, 2, 0)
	MovementLoopAddLocation(NPC, -19.74, -0.08, -74.36, 2, 0)
	MovementLoopAddLocation(NPC, -15.84, -0.08, -71.4, 2, 0)
	MovementLoopAddLocation(NPC, -22.51, -0.08, -70.9, 2, 0)
	MovementLoopAddLocation(NPC, -15.84, -0.08, -71.4, 2, 0)
	MovementLoopAddLocation(NPC, -19.74, -0.08, -74.36, 2, 0)
	MovementLoopAddLocation(NPC, -23.22, -0.08, -70.34, 2, 0)
	MovementLoopAddLocation(NPC, -20.16, -0.1, -67.5, 2, 0)
	MovementLoopAddLocation(NPC, -21.53, -0.09, -69.38, 2, 0)
	MovementLoopAddLocation(NPC, -18.15, -0.08, -72.75, 2, 0)
	MovementLoopAddLocation(NPC, -20.5, -0.08, -70.94, 2, 0)
	MovementLoopAddLocation(NPC, -18.19, 0.95, -70.43, 2, 0)
	MovementLoopAddLocation(NPC, -16.37, -0.08, -70.86, 2, 0)
	MovementLoopAddLocation(NPC, -20.14, -0.1, -67.57, 2, 0)
	MovementLoopAddLocation(NPC, -20.11, -0.08, -71.47, 2, 0)
	MovementLoopAddLocation(NPC, -21.41, -0.08, -72.78, 2, 0)
	MovementLoopAddLocation(NPC, -19.88, -0.08, -74.04, 2, 0)
	MovementLoopAddLocation(NPC, -23.1, -0.08, -70.54, 2, 0)
end



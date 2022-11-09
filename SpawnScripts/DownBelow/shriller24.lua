--[[
	Script Name		:	shriller24.lua
	Script Purpose	:	Waypoint Path for shriller24.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 12:29:52 PM
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
	MovementLoopAddLocation(NPC, -220.47, 2, -77.41, 1, 0)
	MovementLoopAddLocation(NPC, -219.61,2, -65.03, 1, 0)
	MovementLoopAddLocation(NPC, -216.72, 2, -55.5, 1, 0)
	MovementLoopAddLocation(NPC, -206.34, 2, -43.57, 1, 0)
	MovementLoopAddLocation(NPC, -192.81, 2, -29.57, 1, 0)
	MovementLoopAddLocation(NPC, -218.02, 2, -56.09, 1, 0)
	MovementLoopAddLocation(NPC, -219.02, 2, -75.69, 1, 0)
	MovementLoopAddLocation(NPC, -219.27, 2, -83.57, 1, 0)
	MovementLoopAddLocation(NPC, -209.64, 2, -92.67, 1, 0)
	MovementLoopAddLocation(NPC, -184.23, 2, -92.45, 1, 0)
	MovementLoopAddLocation(NPC, -173.21, 2, -73.87, 1, 0)
	MovementLoopAddLocation(NPC, -165.39, 2, -74.45, 1, 0)
	MovementLoopAddLocation(NPC, -149.14, 2, -83.6, 1, 0)
	MovementLoopAddLocation(NPC, -155.21, 2, -99.1, 1, 0)
	MovementLoopAddLocation(NPC, -148.02, 2, -77.36, 1, 0)
	MovementLoopAddLocation(NPC, -155.21, 2, -99.1, 1, 0)
	MovementLoopAddLocation(NPC, -149.14, 2, -83.6, 1, 0)
	MovementLoopAddLocation(NPC, -165.39, 2, -74.45, 1, 0)
	MovementLoopAddLocation(NPC, -173.21, 2, -73.87, 1, 0)
	MovementLoopAddLocation(NPC, -184.23, 2, -92.45, 1, 0)
	MovementLoopAddLocation(NPC, -209.64, 2, -92.67, 1, 0)
	MovementLoopAddLocation(NPC, -219.27, 2, -83.57, 1, 0)
	MovementLoopAddLocation(NPC, -219.02, 2, -75.69, 1, 0)
	MovementLoopAddLocation(NPC, -218.02, 2, -56.09, 1, 0)
	MovementLoopAddLocation(NPC, -192.81, 2, -29.57, 1, 0)
	MovementLoopAddLocation(NPC, -206.34, 2, -43.57, 1, 0)
	MovementLoopAddLocation(NPC, -216.72, 2, -55.5, 1, 0)
	MovementLoopAddLocation(NPC, -219.61,2, -65.03, 1, 0)
	MovementLoopAddLocation(NPC, -220.47, 2, -77.41, 1, 0)
end



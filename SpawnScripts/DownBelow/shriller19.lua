--[[
	Script Name		:	shriller19.lua
	Script Purpose	:	Waypoint Path for shriller19.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 03:57:59 PM
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
	MovementLoopAddLocation(NPC, -142.46, 2, -147.7, 1, 0)
	MovementLoopAddLocation(NPC, -142.51, 2, -142.7, 1, 0)
	MovementLoopAddLocation(NPC, -148.63, 2, -142.44, 1, 0)
	MovementLoopAddLocation(NPC, -148.82, 2, -147.77, 1, 0)
	MovementLoopAddLocation(NPC, -142.5, 2, -142.44, 1, 0)
	MovementLoopAddLocation(NPC, -142.5, 2, -147.77, 1, 0)
	MovementLoopAddLocation(NPC, -148.83, 2, -142.42, 1, 0)
	MovementLoopAddLocation(NPC, -148.82, 2, -147.77, 1, 0)
	MovementLoopAddLocation(NPC, -147.23, 2, -143.07, 1, 0)
	MovementLoopAddLocation(NPC, -146.08, 2, -146.58, 1, 0)
	MovementLoopAddLocation(NPC, -143.99, 2, -142.86, 1, 0)
	MovementLoopAddLocation(NPC, -145.79, 2, -142.58, 1, 0)
	MovementLoopAddLocation(NPC, -145.74, 2, -144.62, 1, 0)
	MovementLoopAddLocation(NPC, -143.11, 2, -144.87, 1, 0)
	MovementLoopAddLocation(NPC, -148.21, 2, -144.82, 1, 0)
	MovementLoopAddLocation(NPC, -145.59, 2, -147.84, 1, 0)
	MovementLoopAddLocation(NPC, -145.4, 2, -146.58, 1, 0)
	MovementLoopAddLocation(NPC, -147.28, 2, -145.95, 1, 0)
	MovementLoopAddLocation(NPC, -143.25, 2, -145.76, 1, 0)
	MovementLoopAddLocation(NPC, -142.83, 2, -143.58, 1, 0)
	MovementLoopAddLocation(NPC, -147.58, 2, -143.65, 1, 0)
	MovementLoopAddLocation(NPC, -142.83, 2, -143.58, 1, 0)
	MovementLoopAddLocation(NPC, -143.25, 2, -145.76, 1, 0)
	MovementLoopAddLocation(NPC, -147.28, 2, -145.95, 2, 0)
	MovementLoopAddLocation(NPC, -145.4, 2, -146.58, 1, 0)
	MovementLoopAddLocation(NPC, -145.59, 2, -147.84, 1, 0)
	MovementLoopAddLocation(NPC, -148.21, 2, -144.82, 1, 0)
	MovementLoopAddLocation(NPC, -143.11, 2, -144.87, 1, 0)
	MovementLoopAddLocation(NPC, -145.74, 2, -144.62, 1, 0)
	MovementLoopAddLocation(NPC, -145.79, 2, -142.58, 1, 0)
	MovementLoopAddLocation(NPC, -143.99, 2, -142.86, 1, 0)
	MovementLoopAddLocation(NPC, -146.08, 2, -146.58, 1, 0)
	MovementLoopAddLocation(NPC, -147.23, 2, -143.07, 1, 0)
	MovementLoopAddLocation(NPC, -148.82, 2, -147.77, 1, 0)
	MovementLoopAddLocation(NPC, -148.83, 2, -142.42, 1, 0)
	MovementLoopAddLocation(NPC, -142.5, 2, -147.77, 1, 0)
	MovementLoopAddLocation(NPC, -142.5, 2, -142.44, 1, 0)
	MovementLoopAddLocation(NPC, -148.82, 2, -147.77, 1, 0)
	MovementLoopAddLocation(NPC, -148.63, 2, -142.44, 1, 0)
	MovementLoopAddLocation(NPC, -142.51, 2, -142.7, 1, 0)
	MovementLoopAddLocation(NPC, -142.46, 2, -147.7, 1, 0)
end



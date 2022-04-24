--[[
	Script Name		:	shriller19.lua
	Script Purpose	:	Waypoint Path for shriller19.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 03:57:59 PM
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
	MovementLoopAddLocation(NPC, -142.46, 0.08, -147.7, 2, 0)
	MovementLoopAddLocation(NPC, -142.51, -0.08, -142.7, 2, 0)
	MovementLoopAddLocation(NPC, -148.63, -0.08, -142.44, 2, 0)
	MovementLoopAddLocation(NPC, -148.82, -0.08, -147.77, 2, 0)
	MovementLoopAddLocation(NPC, -142.5, -0.08, -142.44, 2, 0)
	MovementLoopAddLocation(NPC, -142.5, -0.07, -147.77, 2, 0)
	MovementLoopAddLocation(NPC, -148.83, -0.02, -142.42, 2, 0)
	MovementLoopAddLocation(NPC, -148.82, -0.08, -147.77, 2, 0)
	MovementLoopAddLocation(NPC, -147.23, -0.08, -143.07, 2, 0)
	MovementLoopAddLocation(NPC, -146.08, -0.06, -146.58, 2, 0)
	MovementLoopAddLocation(NPC, -143.99, -0.08, -142.86, 2, 0)
	MovementLoopAddLocation(NPC, -145.79, -0.08, -142.58, 2, 0)
	MovementLoopAddLocation(NPC, -145.74, -0.06, -144.62, 2, 0)
	MovementLoopAddLocation(NPC, -143.11, -0.08, -144.87, 2, 0)
	MovementLoopAddLocation(NPC, -148.21, -0.08, -144.82, 2, 0)
	MovementLoopAddLocation(NPC, -145.59, 0.93, -147.84, 2, 0)
	MovementLoopAddLocation(NPC, -145.4, -0.06, -146.58, 2, 0)
	MovementLoopAddLocation(NPC, -147.28, -0.08, -145.95, 2, 0)
	MovementLoopAddLocation(NPC, -143.25, -0.07, -145.76, 2, 0)
	MovementLoopAddLocation(NPC, -142.83, -0.08, -143.58, 2, 0)
	MovementLoopAddLocation(NPC, -147.58, -0.08, -143.65, 2, 0)
	MovementLoopAddLocation(NPC, -142.83, -0.08, -143.58, 2, 0)
	MovementLoopAddLocation(NPC, -143.25, -0.07, -145.76, 2, 0)
	MovementLoopAddLocation(NPC, -147.28, -0.08, -145.95, 2, 0)
	MovementLoopAddLocation(NPC, -145.4, -0.06, -146.58, 2, 0)
	MovementLoopAddLocation(NPC, -145.59, 0.93, -147.84, 2, 0)
	MovementLoopAddLocation(NPC, -148.21, -0.08, -144.82, 2, 0)
	MovementLoopAddLocation(NPC, -143.11, -0.08, -144.87, 2, 0)
	MovementLoopAddLocation(NPC, -145.74, -0.06, -144.62, 2, 0)
	MovementLoopAddLocation(NPC, -145.79, -0.08, -142.58, 2, 0)
	MovementLoopAddLocation(NPC, -143.99, -0.08, -142.86, 2, 0)
	MovementLoopAddLocation(NPC, -146.08, -0.06, -146.58, 2, 0)
	MovementLoopAddLocation(NPC, -147.23, -0.08, -143.07, 2, 0)
	MovementLoopAddLocation(NPC, -148.82, -0.08, -147.77, 2, 0)
	MovementLoopAddLocation(NPC, -148.83, -0.02, -142.42, 2, 0)
	MovementLoopAddLocation(NPC, -142.5, -0.07, -147.77, 2, 0)
	MovementLoopAddLocation(NPC, -142.5, -0.08, -142.44, 2, 0)
	MovementLoopAddLocation(NPC, -148.82, -0.08, -147.77, 2, 0)
	MovementLoopAddLocation(NPC, -148.63, -0.08, -142.44, 2, 0)
	MovementLoopAddLocation(NPC, -142.51, -0.08, -142.7, 2, 0)
	MovementLoopAddLocation(NPC, -142.46, 0.08, -147.7, 2, 0)
end



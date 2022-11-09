--[[
	Script Name		:	shriller11.lua
	Script Purpose	:	Waypoint Path for shriller11.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 12:23:40 PM
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
	MovementLoopAddLocation(NPC, -99.92, 2, -166.57, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.45, 2, -166.52, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.08, 2, -162.21, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.49, 2, -162.12, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.09, 2, -167.45, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.78, 2, -165.23, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.26, 2, -154.15, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.25, 2, -152.84, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.79, 2, -146.02, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -78.93, 2, -135.41, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.91, 2, -145.15, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.82, 2, -136.26, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.14, 2, -122.25, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.23, 2, -118.05, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.48, 2, -116.32, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -92.87, 2, -120.19, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.79, 2, -118.07, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.77, 2, -122.51, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.54, 2, -112.95, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -127.36, 2, -125.04, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.54, 2, -112.95, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.77, 2, -122.51, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.79, 2, -118.07, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -92.87, 2, -120.19, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.48, 2, -116.32, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.23, 2, -118.05, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.14, 2, -122.25, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.82, 2, -136.26, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.91, 2, -145.15, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -78.93, 2, -135.41, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.79, 2, -146.02, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.25, 2, -152.84, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.26, 2, -154.15, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.78, 2, -165.23, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.09, 2, -167.45, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.49, 2, -162.12, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.08, 2, -162.21, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.45, 2, -166.52, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.92, -2, -166.57, 1, math.random(0,10))
end



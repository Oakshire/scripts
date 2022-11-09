--[[
	Script Name		:	shriller6.lua
	Script Purpose	:	Waypoint Path for shriller6.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 04:11:04 PM
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
	MovementLoopAddLocation(NPC, -52.85, 2, -66.42, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.32, 2, -67.66, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.7, 2, -72.49, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.23, 2, -68.09, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.33, 2, -78.97, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.11, 2, -68.43, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -24.95, 2, -75.21, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -19.53, 2, -69.97, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -26.47, 2, -76.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -12.97, 2, -90.02, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -30.24, 2, -106.56, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.87, 2, -111.71, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.24, 2, -126.25, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.89, 2, -109.44, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.8, 2, -131.78, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.05, 2, -148.77, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -60.91, 2, -153.42, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.08, 2, -152.92, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -60.91, 2, -153.42, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.05, 2, -148.77, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.8, 2, -131.78, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.89, 2, -109.44, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.24, 2, -126.25, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.87, 2, -111.71, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -30.24, 2, -106.56, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -12.97, 2, -90.02, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -26.47, 2, -76.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -19.53, 2, -69.97, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -24.95, 2, -75.21, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.11, 2, -68.43, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.33, 2, -78.97, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.23, 2, -68.09, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.7, 2, -72.49, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.32, 2, -67.66, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.85, 2, -66.42, 1, math.random(0,10))
end



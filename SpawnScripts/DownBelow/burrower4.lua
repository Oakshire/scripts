--[[
	Script Name		:	burrower4.lua
	Script Purpose	:	Waypoint Path for burrower4.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 11:29:56 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
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
	MovementLoopAddLocation(NPC, -31.82, -0.07, -121.38, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.54, 0.53, -126.44, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.63, 0.04, -132.74, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.66, -0.02, -150.98, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -63.44, 0.04, -153.31, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.45, -0.01, -152.82, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.3, -0.08, -158.56, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.52, -0.05, -176.5, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.29, -0.04, -162.33, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.84, -0.07, -167.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.54, -0.08, -159.99, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.62, -0.08, -154.6, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.88, -0.11, -152.51, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -71, -0.08, -148.6, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.49, -0.08, -137.82, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -71, -0.08, -148.6, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.88, -0.11, -152.51, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.62, -0.08, -154.6, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.54, -0.08, -159.99, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.84, -0.07, -167.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.29, -0.04, -162.33, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.52, -0.05, -176.5, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.3, -0.08, -158.56, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.45, -0.01, -152.82, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -63.44, 0.04, -153.31, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.66, -0.02, -150.98, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.63, 0.04, -132.74, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.54, 0.53, -126.44, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.82, -0.07, -121.38, 1, math.random(0,10))
end



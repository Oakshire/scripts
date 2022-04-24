--[[
	Script Name		:	shriller8.lua
	Script Purpose	:	Waypoint Path for shriller8.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 04:35:05 PM
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
	MovementLoopAddLocation(NPC, -61.67, -0.01, -154.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.75, -0.06, -154.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -70.25, -0.08, -148.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.37, -0.08, -137.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.46, 0.28, -148.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -68.48, -0.11, -152.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.64, -0.02, -152.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.59, -0.08, -159.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.65, -0.06, -171.67, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.46, -0.08, -175.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -82.56, -0.06, -181.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.78, -0.06, -190.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.08, -0.07, -181.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.88, -0.04, -175.44, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.97, -0.08, -159.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.21, -0.13, -153.79, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -64.8, -0.06, -154.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.28, 0.12, -147.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.39, -0.08, -131.78, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.98, -0.06, -111.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -14.12, -0.06, -89.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 6.2, -0.06, -109.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -14.12, -0.06, -89.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.98, -0.06, -111.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.39, -0.08, -131.78, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.28, 0.12, -147.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -64.8, -0.06, -154.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.21, -0.13, -153.79, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.97, -0.08, -159.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.88, -0.04, -175.44, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.08, -0.07, -181.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.78, -0.06, -190.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -82.56, -0.06, -181.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.46, -0.08, -175.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.65, -0.06, -171.67, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.59, -0.08, -159.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.64, -0.02, -152.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -68.48, -0.11, -152.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.46, 0.28, -148.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.37, -0.08, -137.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -70.25, -0.08, -148.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.75, -0.06, -154.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -61.67, -0.01, -154.33, 2, math.random(0,10))
end



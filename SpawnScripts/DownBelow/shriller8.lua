--[[
	Script Name		:	shriller8.lua
	Script Purpose	:	Waypoint Path for shriller8.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 04:35:05 PM
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
	MovementLoopAddLocation(NPC, -61.67, 2, -154.33, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.75, 2, -154.66, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -70.25, 2, -148.97, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.37, 2, -137.69, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.46, 2, -148.29, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -68.48, 2, -152.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.64, 2, -152.22, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.59, 2, -159.59, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.65, 2, -171.67, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.46, 2, -175.81, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -82.56, 2, -181.58, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.78, 2, -190.16, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.08, 2, -181.35, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.88, 2, -175.44, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.97, 2, -159.28, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.21, 2, -153.79, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -64.8, 2, -154.7, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.28, 2, -147.93, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.39, 2, -131.78, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.98, 2, -111.31, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -14.12, 2, -89.49, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 6.2, 2, -109.08, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -14.12, 2, -89.49, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.98, 2, -111.31, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.39, 2, -131.78, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.28, 2, -147.93, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -64.8, 2, -154.7, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.21, 2, -153.79, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.97, 2, -159.28, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.88, 2, -175.44, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.08, 2, -181.35, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.78, 2, -190.16, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -82.56, 2, -181.58, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.46, 2, -175.81, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.65, 2, -171.67, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.59, 2, -159.59, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.64, 2, -152.22, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -68.48, 2, -152.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.46,2, -148.29, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.37, 2, -137.69, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -70.25, 2, -148.97, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.75, 2, -154.66, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -61.67, 2, -154.33, 1, math.random(0,10))
end



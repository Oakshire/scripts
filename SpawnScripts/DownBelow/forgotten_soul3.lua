--[[
	Script Name		:	forgotten_soul3.lua
	Script Purpose	:	Waypoint Path for forgotten_soul3.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 12:15:24 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 10
    local level2 = 9
    local difficulty1 = 6
    local hp1 = 370
    local power1 = 130
    local difficulty2 = 6
    local hp2 = 275
    local power2 = 110
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
	MovementLoopAddLocation(NPC, -207.32, -0.9, -47.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -217.37, 0.02, -56.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -218.21, 0.16, -64.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -216.75, -0.09, -82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -213.62, -0.07, -87.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -218.97, -0.11, -95.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -213.67, -0.01, -89.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.59, -0.06, -94.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.3, -0.02, -94.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -185.47, -0.07, -94.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.29, -0.25, -85.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -175.36, -0.26, -74.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.32, 0.11, -72.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.78, -0.05, -65.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.66, -0.11, -61.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.25, -0.09, -59.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.66, -0.11, -61.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.78, -0.05, -65.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.32, 0.11, -72.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -175.36, -0.26, -74.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.29, -0.25, -85.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -185.47, -0.07, -94.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.3, -0.02, -94.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.59, -0.06, -94.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -213.67, -0.01, -89.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -218.97, -0.11, -95.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -213.62, -0.07, -87.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -216.75, -0.09, -82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -218.21, 0.16, -64.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -217.37, 0.02, -56.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -207.32, -0.9, -47.54, 2, math.random(0,5))
end



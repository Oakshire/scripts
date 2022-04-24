--[[
	Script Name		:	shriller14.lua
	Script Purpose	:	Waypoint Path for shriller14.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 02:38:24 PM
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
	MovementLoopAddLocation(NPC, -185.52, -0.07, -189.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.32, -0.07, -187.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.98, 0.06, -193.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.24, -0.09, -192.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -179.53, -0.04, -188.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.73, 0.79, -192.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.12, -0.06, -187.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.71, -0.05, -189.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.18, -0.04, -183.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.87, -0.07, -182.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.1, -0.11, -182.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -175.15, -0.06, -188.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.78, -0.14, -189.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.64, -0.08, -189.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.16, -0.06, -187.3, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.6, -0.09, -192.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.78, -0.14, -189.88, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.55, -0.08, -187.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.85, -0.09, -193.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.86, -0.04, -189.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.19, 0.01, -190.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.37, -0.08, -181.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.19, 0.01, -190.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.86, -0.04, -189.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.85, -0.09, -193.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.55, -0.08, -187.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.78, -0.14, -189.88, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.6, -0.09, -192.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.16, -0.06, -187.3, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.64, -0.08, -189.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.78, -0.14, -189.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -175.15, -0.06, -188.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.1, -0.11, -182.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.87, -0.07, -182.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.18, -0.04, -183.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.71, -0.05, -189.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.12, -0.06, -187.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.73, 0.79, -192.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -179.53, -0.04, -188.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.24, -0.09, -192.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.98, 0.06, -193.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.32, -0.07, -187.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.52, -0.07, -189.75, 2, math.random(0,10))
end



--[[
	Script Name		:	shriller14.lua
	Script Purpose	:	Waypoint Path for shriller14.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 02:38:24 PM
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
	MovementLoopAddLocation(NPC, -185.52, 2.07, -189.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.32, 2.07, -187.27, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.98, 2.06, -193.16, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.24, 2.09, -192.17, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -179.53, 2.04, -188.22, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.73, 2.79, -192.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.12, 2.06, -187.58, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.71, 2.05, -189.93, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.18, 2.04, -183.94, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.87, 2.07, -182.59, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.1, 2.11, -182.46, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -175.15, 2.06, -188.39, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.78, 2.14, -189.81, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.64, 2.08, -189.73, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.16, 2.06, -187.3, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.6, 2.09, -192.57, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.78, 2.14, -189.88, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.55, 2.08, -187.37, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.85, 2.09, -193.12, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.86, 2.04, -189.89, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.19, 2.01, -190.02, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.37, 2.08, -181.11, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.19, 2.01, -190.02, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.86, 2.04, -189.89, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.85, 2.09, -193.12, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.55, 2.08, -187.37, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.78, 2.14, -189.88, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.6, 2.09, -192.57, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.16, 2.06, -187.3, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.64, 2.08, -189.73, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.78, 2.14, -189.81, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -175.15, 2.06, -188.39, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.1, 2.11, -182.46, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.87, 2.07, -182.59, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.18, 2.04, -183.94, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.71, 2.05, -189.93, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.12, 2.06, -187.58, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.73, 2.79, -192.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -179.53, 2.04, -188.22, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.24, 2.09, -192.17, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.98, 2.06, -193.16, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.32, 2.07, -187.27, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.52, 2.07, -189.75, 1, math.random(0,10))
end



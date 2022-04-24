--[[
	Script Name		:	crypt_substance15.lua
	Script Purpose	:	Waypoint Path for crypt_substance15.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 02:35:37 PM
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
	MovementLoopAddLocation(NPC, -127.43, -0.06, -145.4, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -118.4, -0.09, -153.31, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.07, -0.08, -178.9, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -131.35, 0.48, -181.6, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -165.98, 0.37, -170.21, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -173.53, -0.02, -176.23, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -172.95, -0.08, -187.58, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -179.32, -0.15, -190.03, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -185.03, -0.03, -189.91, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -173.98, -0.05, -188.16, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -173.29, -0.08, -174.29, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -166.3, 0.35, -172.71, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -160.9, -0.24, -172.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -135.03, -0.13, -182.73, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.6, 0.53, -180.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -118.71, -0.08, -175.02, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.67, -0.12, -153.48, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.47, -0.08, -144.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.47, -0.05, -136.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -155.12, -0.09, -137.85, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -159.1, -0.02, -134.79, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -160.33, -0.05, -125.55, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -157.4, 0.36, -107.63, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -148.06, -0.12, -83.53, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -157.4, 0.36, -107.63, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -160.33, -0.05, -125.55, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -159.1, -0.02, -134.79, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -155.12, -0.09, -137.85, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.47, -0.05, -136.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.47, -0.08, -144.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.67, -0.12, -153.48, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -118.71, -0.08, -175.02, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.6, 0.53, -180.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -135.03, -0.13, -182.73, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -160.9, -0.24, -172.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -166.3, 0.35, -172.71, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -173.29, -0.08, -174.29, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -173.98, -0.05, -188.16, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -185.03, -0.03, -189.91, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -179.32, -0.15, -190.03, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -172.95, -0.08, -187.58, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -173.53, -0.02, -176.23, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -165.98, 0.37, -170.21, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -131.35, 0.48, -181.6, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.07, -0.08, -178.9, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -118.4, -0.09, -153.31, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.43, -0.06, -145.4, 2, math.random(0,20))
end



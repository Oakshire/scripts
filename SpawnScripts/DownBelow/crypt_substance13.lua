--[[
	Script Name		:	crypt_substance13.lua
	Script Purpose	:	Waypoint Path for crypt_substance13.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 01:02:18 PM
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
	MovementLoopAddLocation(NPC, -171.73, -0.11, -175.57, 1, 0)
	MovementLoopAddLocation(NPC, -172.36, -0.09, -187.5, 1, 0)
	MovementLoopAddLocation(NPC, -181.63, -0.16, -190.6, 1, 0)
	MovementLoopAddLocation(NPC, -188.36, -0.09, -190.34, 1, 0)
	MovementLoopAddLocation(NPC, -177.31, -0.05, -189.95, 1, 0)
	MovementLoopAddLocation(NPC, -172.58, -0.08, -182.05, 1, 0)
	MovementLoopAddLocation(NPC, -172.63, -0.12, -174.93, 1, 0)
	MovementLoopAddLocation(NPC, -165.55, 0.3, -170.19, 1, 0)
	MovementLoopAddLocation(NPC, -156.82, -0.23, -175.91, 1, 0)
	MovementLoopAddLocation(NPC, -142.94, -0.27, -177.19, 1, 0)
	MovementLoopAddLocation(NPC, -132.25, 0.48, -182.26, 1, 0)
	MovementLoopAddLocation(NPC, -121.77, 0.52, -180.08, 1, 0)
	MovementLoopAddLocation(NPC, -118.64, -0.12, -167.66, 1, 0)
	MovementLoopAddLocation(NPC, -121.39, 0.21, -153.73, 1, 0)
	MovementLoopAddLocation(NPC, -127.33, -0.06, -145.43, 1, 0)
	MovementLoopAddLocation(NPC, -129.67, -0.02, -138.66, 1, 0)
	MovementLoopAddLocation(NPC, -130.03, -0.04, -136.37, 1, 0)
	MovementLoopAddLocation(NPC, -136.94, 0.33, -136.44, 1, 0)
	MovementLoopAddLocation(NPC, -146.63, -0.13, -137.21, 1, 0)
	MovementLoopAddLocation(NPC, -156.08, -0.08, -137.07, 1, 0)
	MovementLoopAddLocation(NPC, -158.89, -0.05, -132.33, 1, 0)
	MovementLoopAddLocation(NPC, -160.08, -0.08, -127.27, 1, 0)
	MovementLoopAddLocation(NPC, -157.42, 0.49, -107.21, 1, 0)
	MovementLoopAddLocation(NPC, -145.26, -0.08, -76.43, 1, 0)
	MovementLoopAddLocation(NPC, -157.42, 0.49, -107.21, 1, 0)
	MovementLoopAddLocation(NPC, -160.08, -0.08, -127.27, 1, 0)
	MovementLoopAddLocation(NPC, -158.89, -0.05, -132.33, 1, 0)
	MovementLoopAddLocation(NPC, -156.08, -0.08, -137.07, 1, 0)
	MovementLoopAddLocation(NPC, -146.63, -0.13, -137.21, 1, 0)
	MovementLoopAddLocation(NPC, -136.94, 0.33, -136.44, 1, 0)
	MovementLoopAddLocation(NPC, -130.03, -0.04, -136.37, 1, 0)
	MovementLoopAddLocation(NPC, -129.67, -0.02, -138.66, 1, 0)
	MovementLoopAddLocation(NPC, -127.33, -0.06, -145.43, 1, 0)
	MovementLoopAddLocation(NPC, -121.39, 0.21, -153.73, 1, 0)
	MovementLoopAddLocation(NPC, -118.64, -0.12, -167.66, 1, 0)
	MovementLoopAddLocation(NPC, -121.77, 0.52, -180.08, 1, 0)
	MovementLoopAddLocation(NPC, -132.25, 0.48, -182.26, 1, 0)
	MovementLoopAddLocation(NPC, -142.94, -0.27, -177.19, 1, 0)
	MovementLoopAddLocation(NPC, -156.82, -0.23, -175.91, 1, 0)
	MovementLoopAddLocation(NPC, -165.55, 0.3, -170.19, 1, 0)
	MovementLoopAddLocation(NPC, -172.63, -0.12, -174.93, 1, 0)
	MovementLoopAddLocation(NPC, -172.58, -0.08, -182.05, 1, 0)
	MovementLoopAddLocation(NPC, -177.31, -0.05, -189.95, 1, 0)
	MovementLoopAddLocation(NPC, -188.36, -0.09, -190.34, 1, 0)
	MovementLoopAddLocation(NPC, -181.63, -0.16, -190.6, 1, 0)
	MovementLoopAddLocation(NPC, -172.36, -0.09, -187.5, 1, 0)
	MovementLoopAddLocation(NPC, -171.73, -0.11, -175.57, 1, 0)
end



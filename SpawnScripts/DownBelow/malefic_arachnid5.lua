--[[
	Script Name		:	malefic_arachnid5.lua
	Script Purpose	:	Waypoint Path for malefic_arachnid5.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 03:10:21 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
          local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 7
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 150
    local difficulty2 = 6
    local hp2 = 215
    local power2 = 215
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
	MovementLoopAddLocation(NPC, -143.57, -0.31, -179.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -160.85, -0.22, -173.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.24, -0.08, -170.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.95, -0.09, -173.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -175.01, -0.08, -182.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.36, -0.03, -189.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.31, 0.02, -182.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.1, -0.09, -176.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -166.19, 0.35, -172.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -160.5, -0.22, -173.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.87, -0.24, -174.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -139.04, -0.23, -182.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -131.86, 0.47, -183.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.24, 0.53, -181.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -118.02, -0.03, -175.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -118.18, -0.14, -166.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -107.83, -0.02, -167.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -106.2, -0.1, -174.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -105.49, -0.1, -178.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -111, -0.07, -182.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -109.79, 0.14, -187.3, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -108.07, -0.11, -184.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -111.76, -0.08, -182.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.26, -0.02, -178.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -109.3, -0.09, -177.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -103.43, -0.08, -173.23, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -109.81, -0.12, -170.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -109.71, 0.12, -165.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.36, -0.05, -167.91, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -120.22, 0.45, -151.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.36, -0.05, -167.91, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -109.71, 0.12, -165.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -109.81, -0.12, -170.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -103.43, -0.08, -173.23, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -109.3, -0.09, -177.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.26, -0.02, -178.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -111.76, -0.08, -182.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -108.07, -0.11, -184.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -109.79, 0.14, -187.3, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -111, -0.07, -182.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -105.49, -0.1, -178.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -106.2, -0.1, -174.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -107.83, -0.02, -167.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -118.18, -0.14, -166.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -118.02, -0.03, -175.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.24, 0.53, -181.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -131.86, 0.47, -183.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -139.04, -0.23, -182.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.87, -0.24, -174.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -160.5, -0.22, -173.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -166.19, 0.35, -172.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.1, -0.09, -176.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.31, 0.02, -182.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.36, -0.03, -189.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -175.01, -0.08, -182.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.95, -0.09, -173.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.24, -0.08, -170.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -160.85, -0.22, -173.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -143.57, -0.31, -179.66, 2, math.random(0,10))
end



--[[
	Script Name		:	crypt_substance12.lua
	Script Purpose	:	Waypoint Path for crypt_substance12.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 12:41:58 PM
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
	MovementLoopAddLocation(NPC, -182.74, -0.13, -189.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183, -0.04, -186.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.04, -0.09, -193.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.38, -0.09, -190.41, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.05, -0.12, -188.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.91, -0.18, -185.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.77, -0.02, -176.62, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -166.87, 0.26, -171.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -154.76, -0.31, -172.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -143.91, -0.36, -178.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -132.44, 0.48, -181.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.31, 0.54, -180.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -118.02, -0.12, -168.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -120.82, 0.44, -151.95, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -126.49, -0.07, -146.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -129.07, -0.06, -137.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -125.1, -0.12, -123.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -123.04, 0.54, -119.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -115.8, -0.08, -116.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -108.04, -0.11, -114.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.15, -0.09, -139.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -108.04, -0.11, -114.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -115.8, -0.08, -116.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -123.04, 0.54, -119.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -125.1, -0.12, -123.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -129.07, -0.06, -137.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -126.49, -0.07, -146.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -120.82, 0.44, -151.95, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -118.02, -0.12, -168.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.31, 0.54, -180.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -132.44, 0.48, -181.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -143.91, -0.36, -178.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -154.76, -0.31, -172.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -166.87, 0.26, -171.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.77, -0.02, -176.62, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.91, -0.18, -185.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.05, -0.12, -188.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.38, -0.09, -190.41, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.04, -0.09, -193.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183, -0.04, -186.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.74, -0.13, -189.32, 2, math.random(0,10))
end



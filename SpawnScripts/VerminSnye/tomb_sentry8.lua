--[[
	Script Name		:	tomb_sentry8.lua
	Script Purpose	:	Waypoint Path for tomb_sentry8.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 10:02:20 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =13
    local level2 = 14
    local difficulty1 = 6
    local hp1 = 680
    local power1 = 205
    local difficulty2 = 6
    local hp2 = 795
    local power2 = 240
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 209.68, -6.98, -170.15, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 199.71, -7.07, -162.36, 2, 0)
	MovementLoopAddLocation(NPC, 176.84, -7.04, -163.25, 2, 0)
	MovementLoopAddLocation(NPC, 171.12, -7.04, -170.79, 2, 0)
	MovementLoopAddLocation(NPC, 169.58, -7.05, -176.84, 2, 0)
	MovementLoopAddLocation(NPC, 169.73, -6.93, -185.04, 2, 0)
	MovementLoopAddLocation(NPC, 168.89, -6.98, -170.23, 2, 0)
	MovementLoopAddLocation(NPC, 174.09, -7, -166.72, 2, 0)
	MovementLoopAddLocation(NPC, 177.39, -7.05, -165.44, 2, 0)
	MovementLoopAddLocation(NPC, 199.37, -6.97, -164.48, 2, 0)
	MovementLoopAddLocation(NPC, 210.13, -7.02, -172.32, 2, 0)
	MovementLoopAddLocation(NPC, 211.52, -7.03, -190.27, 2, 0)
	MovementLoopAddLocation(NPC, 225.28, -6.98, -202.88, 2, 0)
	MovementLoopAddLocation(NPC, 252.58, -6.99, -203, 2, 0)
	MovementLoopAddLocation(NPC, 255.67, -6.91, -200.68, 2, 0)
	MovementLoopAddLocation(NPC, 255.88, -7, -195.79, 2, 0)
	MovementLoopAddLocation(NPC, 256.12, -7.04, -190.29, 2, 0)
	MovementLoopAddLocation(NPC, 249.51, -6.97, -179.71, 2, 0)
	MovementLoopAddLocation(NPC, 248.32, -6.86, -167.06, 2, 0)
	MovementLoopAddLocation(NPC, 235.27, -6.86, -153.99, 2, 0)
	MovementLoopAddLocation(NPC, 234.34, -6.86, -150.15, 2, 0)
	MovementLoopAddLocation(NPC, 236.87, -6.86, -145.61, 2, 0)
	MovementLoopAddLocation(NPC, 237.67, -6.86, -135.31, 2, 0)
	MovementLoopAddLocation(NPC, 243.13, -6.86, -135.45, 2, 0)
	MovementLoopAddLocation(NPC, 242.82, -6.86, -119.22, 2, 0)
	MovementLoopAddLocation(NPC, 244.9, -6.86, -115.42, 2, 0)
	MovementLoopAddLocation(NPC, 246.73, -6.86, -103.05, 2, 0)
	MovementLoopAddLocation(NPC, 247.07, -6.86, -98.07, 2, 0)
	MovementLoopAddLocation(NPC, 247.3, -6.86, -82.33, 2, 0)
	MovementLoopAddLocation(NPC, 237.3, -6.86, -82.17, 2, 0)
	MovementLoopAddLocation(NPC, 237.29, -7, -68.64, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 237.3, -6.86, -82.17, 2, 0)
	MovementLoopAddLocation(NPC, 247.3, -6.86, -82.33, 2, 0)
	MovementLoopAddLocation(NPC, 247.07, -6.86, -98.07, 2, 0)
	MovementLoopAddLocation(NPC, 246.73, -6.86, -103.05, 2, 0)
	MovementLoopAddLocation(NPC, 244.9, -6.86, -115.42, 2, 0)
	MovementLoopAddLocation(NPC, 242.82, -6.86, -119.22, 2, 0)
	MovementLoopAddLocation(NPC, 243.13, -6.86, -135.45, 2, 0)
	MovementLoopAddLocation(NPC, 237.67, -6.86, -135.31, 2, 0)
	MovementLoopAddLocation(NPC, 236.87, -6.86, -145.61, 2, 0)
	MovementLoopAddLocation(NPC, 234.34, -6.86, -150.15, 2, 0)
	MovementLoopAddLocation(NPC, 235.27, -6.86, -153.99, 2, 0)
	MovementLoopAddLocation(NPC, 248.32, -6.86, -167.06, 2, 0)
	MovementLoopAddLocation(NPC, 249.51, -6.97, -179.71, 2, 0)
	MovementLoopAddLocation(NPC, 256.12, -7.04, -190.29, 2, 0)
	MovementLoopAddLocation(NPC, 255.88, -7, -195.79, 2, 0)
	MovementLoopAddLocation(NPC, 255.67, -6.91, -200.68, 2, 0)
	MovementLoopAddLocation(NPC, 252.58, -6.99, -203, 2, 0)
	MovementLoopAddLocation(NPC, 225.28, -6.98, -202.88, 2, 0)
	MovementLoopAddLocation(NPC, 211.52, -7.03, -190.27, 2, 0)
	MovementLoopAddLocation(NPC, 210.13, -7.02, -172.32, 2, 0)
	MovementLoopAddLocation(NPC, 199.37, -6.97, -164.48, 2, 0)
	MovementLoopAddLocation(NPC, 177.39, -7.05, -165.44, 2, 0)
	MovementLoopAddLocation(NPC, 174.09, -7, -166.72, 2, 0)
	MovementLoopAddLocation(NPC, 168.89, -6.98, -170.23, 2, 0)
	MovementLoopAddLocation(NPC, 169.73, -6.93, -185.04, 2, 0)
	MovementLoopAddLocation(NPC, 169.58, -7.05, -176.84, 2, 0)
	MovementLoopAddLocation(NPC, 171.12, -7.04, -170.79, 2, 0)
	MovementLoopAddLocation(NPC, 176.84, -7.04, -163.25, 2, 0)
	MovementLoopAddLocation(NPC, 199.71, -7.07, -162.36, 2, 0)
	MovementLoopAddLocation(NPC, 209.68, -6.98, -170.15, 2, math.random(0,8))
end



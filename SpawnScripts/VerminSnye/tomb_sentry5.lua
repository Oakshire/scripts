--[[
	Script Name		:	tomb_sentry5.lua
	Script Purpose	:	Waypoint Path for tomb_sentry5.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 08:29:31 PM
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
	MovementLoopAddLocation(NPC, 234.8, -6.86, -118.26, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.62, -6.86, -118.86, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 249.62, -6.86, -108.96, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 250.21, -5, -101.77, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 252.8, -5, -102.12, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 252.9, 0, -118.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.03, 0, -118.42, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 253.04, 0, -118.15, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 252.92, -5, -102.41, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 250.31, -5, -102.51, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 249.56, -6.86, -108.29, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.38, -6.86, -107.95, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.06, -6.86, -88.12, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 235.59, -6.86, -99.93, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 236.43, -6.86, -108.36, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 247.08, -6.86, -108.22, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 247.03, -6.86, -82.16, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.31, -6.86, -82.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 251.53, -6.86, -82.19, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.15, -6.86, -89.98, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 246.75, -6.86, -101.1, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 243.05, -6.86, -120.64, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 242.81, -6.86, -132.45, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 243.21, -6.86, -134.51, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 250.06, -6.86, -144.34, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 250.62, -5.02, -149.25, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 253.27, -5, -149.58, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 254.3, 0, -138.99, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 253.96, 0, -135.29, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 237.93, 1.03, -134.22, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 253.96, 0, -135.29, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 254.3, 0, -138.99, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 253.27, -5, -149.58, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 250.62, -5.02, -149.25, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 250.06, -6.86, -144.34, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 243.21, -6.86, -134.51, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 242.81, -6.86, -132.45, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 243.05, -6.86, -120.64, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 246.75, -6.86, -101.1, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.15, -6.86, -89.98, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 251.53, -6.86, -82.19, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.31, -6.86, -82.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 247.03, -6.86, -82.16, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 247.08, -6.86, -108.22, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 236.43, -6.86, -108.36, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 235.59, -6.86, -99.93, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.06, -6.86, -88.12, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.38, -6.86, -107.95, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 249.56, -6.86, -108.29, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 250.31, -5, -102.51, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 252.92, -5, -102.41, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 253.04, 0, -118.15, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.03, 0, -118.42, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 252.9, 0, -118.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 252.8, -5, -102.12, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 250.21, -5, -101.77, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 249.62, -6.86, -108.96, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 248.62, -6.86, -118.86, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 234.8, -6.86, -118.26, 2, math.random(0,8))
end



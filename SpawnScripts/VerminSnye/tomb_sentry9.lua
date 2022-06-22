--[[
	Script Name		:	tomb_sentry9.lua
	Script Purpose	:	Waypoint Path for tomb_sentry9.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 10:11:28 PM
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
	MovementLoopAddLocation(NPC, 200.62, -7.04, -164.48, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 208.23, -7.06, -170.97, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 209.05, -6.98, -174, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 209.77, -6.98, -189.12, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 217.9, -7.09, -197.18, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 228.18, -6.98, -201.25, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 231.96, -7.04, -203.05, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 251.8, -6.96, -203, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 256.03, -6.91, -200.72, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 255.89, -6.98, -193.9, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 253.84, -7.04, -186.97, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 249.56, -7.04, -178.18, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 248.59, -6.86, -171.64, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 237.92, -6.86, -170.01, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 237.77, -6.86, -157.36, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 237.92, -6.86, -170.01, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 248.59, -6.86, -171.64, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 249.56, -7.04, -178.18, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 253.84, -7.04, -186.97, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 255.89, -6.98, -193.9, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 256.03, -6.91, -200.72, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 251.8, -6.96, -203, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 231.96, -7.04, -203.05, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 228.18, -6.98, -201.25, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 217.9, -7.09, -197.18, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 209.77, -6.98, -189.12, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 209.05, -6.98, -174, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 208.23, -7.06, -170.97, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 200.62, -7.04, -164.48, 2, math.random(0,3))
end



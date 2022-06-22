--[[
	Script Name		:	tomb_priest.lua
	Script Purpose	:	Waypoint Path for tomb_priest.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 09:08:16 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =14
    local level2 = 15
    local difficulty1 = 6
    local hp1 = 765
    local power1 = 240
    local difficulty2 = 6
    local hp2 = 890
    local power2 = 270
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
	MovementLoopAddLocation(NPC, 235.11, -6.86, -144.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 233.06, -6.86, -134.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 254.31, -6.86, -133.44, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 249.53, -6.86, -136.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 248.3, -6.86, -148.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 238.6, -6.86, -133.95, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 237.02, -6.86, -145.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 233.42, -6.86, -148.83, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 237.63, -6.86, -149.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 240.23, -6.86, -142.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 246.29, -6.86, -141.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 235.85, -6.86, -143.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 246.29, -6.86, -141.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 240.23, -6.86, -142.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 237.63, -6.86, -149.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 233.42, -6.86, -148.83, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 237.02, -6.86, -145.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 238.6, -6.86, -133.95, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 248.3, -6.86, -148.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 249.53, -6.86, -136.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 254.31, -6.86, -133.44, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 233.06, -6.86, -134.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 235.11, -6.86, -144.42, 2, math.random(0,10))
end



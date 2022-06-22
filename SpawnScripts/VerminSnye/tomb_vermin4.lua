--[[
	Script Name		:	tomb_vermin6.lua
	Script Purpose	:	Waypoint Path for tomb_vermin6.lua
	Script Author	:	Devn00b
	Script Date		:	06/12/2020 12:22:51 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =12
    local level2 = 13
    local difficulty1 = 6
    local hp1 = 550
    local power1 = 185
    local difficulty2 = 6
    local hp2 = 680
    local power2 = 205
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
	MovementLoopAddLocation(NPC, 49.08, 0.04, -130.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 55.69, 0.04, -130.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 53.2, 0.04, -149.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 46.2, -0.21, -148.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 46.6, -0.34, -134.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.3, -0.34, -131.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.37, -0.34, -140.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 54.41, -0.34, -140.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 54.42, -0.34, -148.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 48.55, -0.34, -148.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.25, -0.34, -133.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 41.34, -0.18, -131.26, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 52.83, -0.34, -142.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 55.44, 0.04, -129.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 52.82, 0.04, -130.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 36.94, -0.02, -146.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 41.96, 0.04, -149.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 49.42, 0.01, -130.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 41.96, 0.04, -149.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 36.94, -0.02, -146.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 52.82, 0.04, -130.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 55.44, 0.04, -129.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 52.83, -0.34, -142.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 41.34, -0.18, -131.26, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.25, -0.34, -133.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 48.55, -0.34, -148.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 54.42, -0.34, -148.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 54.41, -0.34, -140.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.37, -0.34, -140.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.3, -0.34, -131.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 46.6, -0.34, -134.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 46.2, -0.21, -148.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 53.2, 0.04, -149.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 55.69, 0.04, -130.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 49.08, 0.04, -130.45, 2, math.random(0,5))
end



--[[
	Script Name		:	tomb_vermin4.lua
	Script Purpose	:	Waypoint Path for tomb_vermin4.lua
	Script Author	:	Devn00b
	Script Date		:	06/12/2020 12:22:43 AM
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
	MovementLoopAddLocation(NPC, 26.44, -0.34, -133.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.67, -0.34, -133.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.95, 0.04, -149.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 56.35, -0.02, -136.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 52.35, 0.04, -150.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 34.34, 0.01, -130.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 48.84, -0.34, -135.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 45.49, 0.04, -129.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 46.62, 0.04, -151.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 57.03, 0.04, -140.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 43.65, -0.34, -139.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 32.94, 0.04, -130.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.61, -0.34, -132.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 16.28, 1.17, -139.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 22.62, 1.21, -143.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.36, 1.21, -149.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.84, 1.22, -138.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 23.54, 1.21, -142.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 29.18, 1.22, -141.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 32.05, 1.22, -138.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 32.9, 1.22, -139.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 32.77, 1.22, -148.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 19.22, 1.21, -149.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 16.15, 1.21, -140.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.62, 0.04, -129.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 19.75, 0.03, -134.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 26.04, 0.04, -130.26, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 33.99, 0.04, -134.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.27, 0.04, -129.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 41.8, -0.34, -134.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.27, 0.04, -129.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 33.99, 0.04, -134.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 26.04, 0.04, -130.26, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 19.75, 0.03, -134.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.62, 0.04, -129.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 16.15, 1.21, -140.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 19.22, 1.21, -149.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 32.77, 1.22, -148.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 32.9, 1.22, -139.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 32.05, 1.22, -138.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 29.18, 1.22, -141.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 23.54, 1.21, -142.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.84, 1.22, -138.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.36, 1.21, -149.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 22.62, 1.21, -143.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 16.28, 1.17, -139.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.61, -0.34, -132.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 32.94, 0.04, -130.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 43.65, -0.34, -139.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 57.03, 0.04, -140.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 46.62, 0.04, -151.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 45.49, 0.04, -129.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 48.84, -0.34, -135.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 34.34, 0.01, -130.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 52.35, 0.04, -150.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 56.35, -0.02, -136.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.95, 0.04, -149.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.67, -0.34, -133.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 26.44, -0.34, -133.3, 2, math.random(0,5))
end



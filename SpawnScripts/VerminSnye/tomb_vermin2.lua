--[[
	Script Name		:	tomb_vermin2.lua
	Script Purpose	:	Waypoint Path for tomb_vermin2.lua
	Script Author	:	Devn00b
	Script Date		:	06/12/2020 12:15:52 AM
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
	MovementLoopAddLocation(NPC, -10.13, -0.19, -180.96, 2, 0)
	MovementLoopAddLocation(NPC, -9.3, -0.09, -173.53, 2, 0)
	MovementLoopAddLocation(NPC, -16.36, -0.11, -167.03, 2, 0)
	MovementLoopAddLocation(NPC, -17.1, 0.03, -161.35, 2, 0)
	MovementLoopAddLocation(NPC, -12.46, 0.34, -153.85, 2, 0)
	MovementLoopAddLocation(NPC, -12.11, -0.25, -145.95, 2, 0)
	MovementLoopAddLocation(NPC, 16.14, 1.21, -146.43, 2, 0)
	MovementLoopAddLocation(NPC, 31.01, 1.22, -140.14, 2, 0)
	MovementLoopAddLocation(NPC, 32.86, 1.22, -141.03, 2, 0)
	MovementLoopAddLocation(NPC, 33, 1.22, -147.72, 2, 0)
	MovementLoopAddLocation(NPC, 16.06, 1.21, -150.58, 2, 0)
	MovementLoopAddLocation(NPC, 14.86, 1.21, -141.3, 2, 0)
	MovementLoopAddLocation(NPC, 15.01, -0.34, -132.47, 2, 0)
	MovementLoopAddLocation(NPC, 56.2, -0.1, -132.75, 2, 0)
	MovementLoopAddLocation(NPC, 53.16, -0.34, -140.73, 2, 0)
	MovementLoopAddLocation(NPC, 48.52, -0.34, -141.04, 2, 0)
	MovementLoopAddLocation(NPC, 46.16, 0.04, -149.64, 2, 0)
	MovementLoopAddLocation(NPC, 46.6, -0.34, -139.61, 2, 0)
	MovementLoopAddLocation(NPC, 48.93, 0.04, -130.56, 2, 0)
	MovementLoopAddLocation(NPC, 37.25, -0.22, -134.41, 2, 0)
	MovementLoopAddLocation(NPC, 38.18, 0.04, -129.82, 2, 0)
	MovementLoopAddLocation(NPC, 56.19, 0.01, -130.85, 2, 0)
	MovementLoopAddLocation(NPC, 55.88, -0.28, -138.93, 2, 0)
	MovementLoopAddLocation(NPC, 49.76, -0.34, -141.92, 2, 0)
	MovementLoopAddLocation(NPC, 42.67, -0.34, -132.52, 2, 0)
	MovementLoopAddLocation(NPC, 15.44, -0.34, -132.99, 2, 0)
	MovementLoopAddLocation(NPC, 15.59, 1.2, -139.55, 2, 0)
	MovementLoopAddLocation(NPC, 25.3, 1.21, -148.05, 2, 0)
	MovementLoopAddLocation(NPC, 26.47, -0.12, -161.31, 2, 0)
	MovementLoopAddLocation(NPC, 50.42, -0.21, -161.17, 2, 0)
	MovementLoopAddLocation(NPC, 26.47, -0.12, -161.31, 2, 0)
	MovementLoopAddLocation(NPC, 25.3, 1.21, -148.05, 2, 0)
	MovementLoopAddLocation(NPC, 15.59, 1.2, -139.55, 2, 0)
	MovementLoopAddLocation(NPC, 15.44, -0.34, -132.99, 2, 0)
	MovementLoopAddLocation(NPC, 42.67, -0.34, -132.52, 2, 0)
	MovementLoopAddLocation(NPC, 49.76, -0.34, -141.92, 2, 0)
	MovementLoopAddLocation(NPC, 55.88, -0.28, -138.93, 2, 0)
	MovementLoopAddLocation(NPC, 56.19, 0.01, -130.85, 2, 0)
	MovementLoopAddLocation(NPC, 38.18, 0.04, -129.82, 2, 0)
	MovementLoopAddLocation(NPC, 37.25, -0.22, -134.41, 2, 0)
	MovementLoopAddLocation(NPC, 48.93, 0.04, -130.56, 2, 0)
	MovementLoopAddLocation(NPC, 46.6, -0.34, -139.61, 2, 0)
	MovementLoopAddLocation(NPC, 46.16, 0.04, -149.64, 2, 0)
	MovementLoopAddLocation(NPC, 48.52, -0.34, -141.04, 2, 0)
	MovementLoopAddLocation(NPC, 53.16, -0.34, -140.73, 2, 0)
	MovementLoopAddLocation(NPC, 56.2, -0.1, -132.75, 2, 0)
	MovementLoopAddLocation(NPC, 15.01, -0.34, -132.47, 2, 0)
	MovementLoopAddLocation(NPC, 14.86, 1.21, -141.3, 2, 0)
	MovementLoopAddLocation(NPC, 16.06, 1.21, -150.58, 2, 0)
	MovementLoopAddLocation(NPC, 33, 1.22, -147.72, 2, 0)
	MovementLoopAddLocation(NPC, 32.86, 1.22, -141.03, 2, 0)
	MovementLoopAddLocation(NPC, 31.01, 1.22, -140.14, 2, 0)
	MovementLoopAddLocation(NPC, 16.14, 1.21, -146.43, 2, 0)
	MovementLoopAddLocation(NPC, -12.11, -0.25, -145.95, 2, 0)
	MovementLoopAddLocation(NPC, -12.46, 0.34, -153.85, 2, 0)
	MovementLoopAddLocation(NPC, -17.1, 0.03, -161.35, 2, 0)
	MovementLoopAddLocation(NPC, -16.36, -0.11, -167.03, 2, 0)
	MovementLoopAddLocation(NPC, -9.3, -0.09, -173.53, 2, 0)
	MovementLoopAddLocation(NPC, -10.13, -0.19, -180.96, 2, 0)
end



--[[
	Script Name		:	tomb_vermin.lua
	Script Purpose	:	Waypoint Path for tomb_vermin.lua
	Script Author	:	Devn00b
	Script Date		:	06/12/2020 12:12:03 AM
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
	MovementLoopAddLocation(NPC, -12.5, 0.01, -143.57, 2, 0)
	MovementLoopAddLocation(NPC, -12.47, -0.25, -134.63, 2, 0)
	MovementLoopAddLocation(NPC, -16.39, 0.23, -127.5, 2, 0)
	MovementLoopAddLocation(NPC, -16.21, 0.53, -119.53, 2, 0)
	MovementLoopAddLocation(NPC, -13.42, -0.27, -116.27, 2, 0)
	MovementLoopAddLocation(NPC, -15.88, 0.52, -119.28, 2, 0)
	MovementLoopAddLocation(NPC, -16.81, -0.1, -125.94, 2, 0)
	MovementLoopAddLocation(NPC, -12.7, -0.23, -133.67, 2, 0)
	MovementLoopAddLocation(NPC, -12.12, -0.18, -144.91, 2, 0)
	MovementLoopAddLocation(NPC, -12.44, -0.09, -154.8, 2, 0)
	MovementLoopAddLocation(NPC, -17.83, -0.04, -162.64, 2, 0)
	MovementLoopAddLocation(NPC, -10.33, -0.13, -173.61, 2, 0)
	MovementLoopAddLocation(NPC, -9.77, 0.4, -178.53, 2, 0)
	MovementLoopAddLocation(NPC, -16.25, 0.07, -189.23, 2, 0)
	MovementLoopAddLocation(NPC, -13.63, 0.09, -196.24, 2, 0)
	MovementLoopAddLocation(NPC, -7.13, -0.11, -197.69, 2, 0)
	MovementLoopAddLocation(NPC, 5.23, -0.08, -196.91, 2, 0)
	MovementLoopAddLocation(NPC, 19.77, -0.08, -182.34, 2, 0)
	MovementLoopAddLocation(NPC, 16.4, -0.08, -166.16, 2, 0)
	MovementLoopAddLocation(NPC, 18.77, -0.05, -161.21, 2, 0)
	MovementLoopAddLocation(NPC, 36.7, 0.46, -161.24, 2, 0)
	MovementLoopAddLocation(NPC, 49.54, -0.2, -161.21, 2, 0)
	MovementLoopAddLocation(NPC, 26.47, -0.12, -161.03, 2, 0)
	MovementLoopAddLocation(NPC, 26.59, 1.21, -148.22, 2, 0)
	MovementLoopAddLocation(NPC, 16.27, 1.21, -140.13, 2, 0)
	MovementLoopAddLocation(NPC, 15.35, -0.06, -134.25, 2, 0)
	MovementLoopAddLocation(NPC, 37.61, -0.34, -133.6, 2, 0)
	MovementLoopAddLocation(NPC, 37.61, -0.34, -148.28, 2, 0)
	MovementLoopAddLocation(NPC, 56.12, -0.14, -147.55, 2, 0)
	MovementLoopAddLocation(NPC, 55.79, -0.32, -139.87, 2, 0)
	MovementLoopAddLocation(NPC, 37.87, -0.34, -141.01, 2, 0)
	MovementLoopAddLocation(NPC, 37.35, 0.04, -130.15, 2, 0)
	MovementLoopAddLocation(NPC, 15.44, -0.34, -131.99, 2, 0)
	MovementLoopAddLocation(NPC, 16.32, 1.21, -146.52, 2, 0)
	MovementLoopAddLocation(NPC, -12.17, -0.24, -145.91, 2, 0)
	MovementLoopAddLocation(NPC, 16.32, 1.21, -146.52, 2, 0)
	MovementLoopAddLocation(NPC, 15.44, -0.34, -131.99, 2, 0)
	MovementLoopAddLocation(NPC, 37.35, 0.04, -130.15, 2, 0)
	MovementLoopAddLocation(NPC, 37.87, -0.34, -141.01, 2, 0)
	MovementLoopAddLocation(NPC, 55.79, -0.32, -139.87, 2, 0)
	MovementLoopAddLocation(NPC, 56.12, -0.14, -147.55, 2, 0)
	MovementLoopAddLocation(NPC, 37.61, -0.34, -148.28, 2, 0)
	MovementLoopAddLocation(NPC, 37.61, -0.34, -133.6, 2, 0)
	MovementLoopAddLocation(NPC, 15.35, -0.06, -134.25, 2, 0)
	MovementLoopAddLocation(NPC, 16.27, 1.21, -140.13, 2, 0)
	MovementLoopAddLocation(NPC, 26.59, 1.21, -148.22, 2, 0)
	MovementLoopAddLocation(NPC, 26.47, -0.12, -161.03, 2, 0)
	MovementLoopAddLocation(NPC, 49.54, -0.2, -161.21, 2, 0)
	MovementLoopAddLocation(NPC, 36.7, 0.46, -161.24, 2, 0)
	MovementLoopAddLocation(NPC, 18.77, -0.05, -161.21, 2, 0)
	MovementLoopAddLocation(NPC, 16.4, -0.08, -166.16, 2, 0)
	MovementLoopAddLocation(NPC, 19.77, -0.08, -182.34, 2, 0)
	MovementLoopAddLocation(NPC, 5.23, -0.08, -196.91, 2, 0)
	MovementLoopAddLocation(NPC, -7.13, -0.11, -197.69, 2, 0)
	MovementLoopAddLocation(NPC, -13.63, 0.09, -196.24, 2, 0)
	MovementLoopAddLocation(NPC, -16.25, 0.07, -189.23, 2, 0)
	MovementLoopAddLocation(NPC, -9.77, 0.4, -178.53, 2, 0)
	MovementLoopAddLocation(NPC, -10.33, -0.13, -173.61, 2, 0)
	MovementLoopAddLocation(NPC, -17.83, -0.04, -162.64, 2, 0)
	MovementLoopAddLocation(NPC, -12.44, -0.09, -154.8, 2, 0)
	MovementLoopAddLocation(NPC, -12.12, -0.18, -144.91, 2, 0)
	MovementLoopAddLocation(NPC, -12.7, -0.23, -133.67, 2, 0)
	MovementLoopAddLocation(NPC, -16.81, -0.1, -125.94, 2, 0)
	MovementLoopAddLocation(NPC, -15.88, 0.52, -119.28, 2, 0)
	MovementLoopAddLocation(NPC, -13.42, -0.27, -116.27, 2, 0)
	MovementLoopAddLocation(NPC, -16.21, 0.53, -119.53, 2, 0)
	MovementLoopAddLocation(NPC, -16.39, 0.23, -127.5, 2, 0)
	MovementLoopAddLocation(NPC, -12.47, -0.25, -134.63, 2, 0)
	MovementLoopAddLocation(NPC, -12.5, 0.01, -143.57, 2, 0)
end



--[[
	Script Name		:	bloodsaber_adept3.lua
	Script Purpose	:	Waypoint Path for bloodsaber_adept3.lua
	Script Author	:	Devn00b
	Script Date		:	06/13/2020 08:28:57 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =13
    local level2 = 14
    local difficulty1 = 9
    local hp1 = 2360
    local power1 = 1085
    local difficulty2 = 9
    local hp2 = 2730
    local power2 = 1205
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
	MovementLoopAddLocation(NPC, 32.22, -0.7, -193, 2, 0)
	MovementLoopAddLocation(NPC, 17.01, -0.7, -193.49, 2, 0)
	MovementLoopAddLocation(NPC, 1.48, -0.08, -197.12, 2, 0)
	MovementLoopAddLocation(NPC, -9.19, -0.08, -197.64, 2, 0)
	MovementLoopAddLocation(NPC, -16.01, 0.02, -195, 2, 0)
	MovementLoopAddLocation(NPC, -15.09, -0.08, -184.99, 2, 0)
	MovementLoopAddLocation(NPC, -9.53, 0.44, -178.75, 2, 0)
	MovementLoopAddLocation(NPC, -8.83, -0.05, -173, 2, 0)
	MovementLoopAddLocation(NPC, -17.3, -0.09, -164.62, 2, 0)
	MovementLoopAddLocation(NPC, -16.5, -0.02, -161.29, 2, 0)
	MovementLoopAddLocation(NPC, -12.64, -0.1, -154.87, 2, 0)
	MovementLoopAddLocation(NPC, -12.34, -0.15, -144.55, 2, 0)
	MovementLoopAddLocation(NPC, -12.37, -0.25, -134.74, 2, 0)
	MovementLoopAddLocation(NPC, -16.14, 0.36, -128.56, 2, 0)
	MovementLoopAddLocation(NPC, -17.32, -0.05, -125.13, 2, 0)
	MovementLoopAddLocation(NPC, -11.58, -0.03, -133.23, 2, 0)
	MovementLoopAddLocation(NPC, -12.27, 0.36, -152.39, 2, 0)
	MovementLoopAddLocation(NPC, -17.14, -0.06, -164.05, 2, 0)
	MovementLoopAddLocation(NPC, -10.46, -0.04, -174.34, 2, 0)
	MovementLoopAddLocation(NPC, -11.27, 0.37, -178.04, 2, 0)
	MovementLoopAddLocation(NPC, -14.46, -0.08, -188.41, 2, 0)
	MovementLoopAddLocation(NPC, -13.28, 0.06, -196.28, 2, 0)
	MovementLoopAddLocation(NPC, -7.89, 0.05, -196.91, 2, 0)
	MovementLoopAddLocation(NPC, 0.1, 0.09, -196.4, 2, 0)
	MovementLoopAddLocation(NPC, 9.85, -0.08, -194.66, 2, 0)
	MovementLoopAddLocation(NPC, 48.41, -0.32, -191.13, 2, 0)
	MovementLoopAddLocation(NPC, 51.15, -0.32, -187.48, 2, 0)
	MovementLoopAddLocation(NPC, 51.99, -0.32, -184.56, 2, 0)
	MovementLoopAddLocation(NPC, 52.87, -0.26, -175.58, 2, 0)
	MovementLoopAddLocation(NPC, 55.57, -0.17, -172.6, 2, 0)
	MovementLoopAddLocation(NPC, 64.14, -0.25, -170.51, 2, 0)
	MovementLoopAddLocation(NPC, 87.24, -0.92, -170.32, 2, 0)
	MovementLoopAddLocation(NPC, 64.14, -0.25, -170.51, 2, 0)
	MovementLoopAddLocation(NPC, 55.57, -0.17, -172.6, 2, 0)
	MovementLoopAddLocation(NPC, 52.87, -0.26, -175.58, 2, 0)
	MovementLoopAddLocation(NPC, 51.99, -0.32, -184.56, 2, 0)
	MovementLoopAddLocation(NPC, 51.15, -0.32, -187.48, 2, 0)
	MovementLoopAddLocation(NPC, 48.41, -0.32, -191.13, 2, 0)
	MovementLoopAddLocation(NPC, 9.85, -0.08, -194.66, 2, 0)
	MovementLoopAddLocation(NPC, 0.1, 0.09, -196.4, 2, 0)
	MovementLoopAddLocation(NPC, -7.89, 0.05, -196.91, 2, 0)
	MovementLoopAddLocation(NPC, -13.28, 0.06, -196.28, 2, 0)
	MovementLoopAddLocation(NPC, -14.46, -0.08, -188.41, 2, 0)
	MovementLoopAddLocation(NPC, -11.27, 0.37, -178.04, 2, 0)
	MovementLoopAddLocation(NPC, -10.46, -0.04, -174.34, 2, 0)
	MovementLoopAddLocation(NPC, -17.14, -0.06, -164.05, 2, 0)
	MovementLoopAddLocation(NPC, -12.27, 0.36, -152.39, 2, 0)
	MovementLoopAddLocation(NPC, -11.58, -0.03, -133.23, 2, 0)
	MovementLoopAddLocation(NPC, -17.32, -0.05, -125.13, 2, 0)
	MovementLoopAddLocation(NPC, -16.14, 0.36, -128.56, 2, 0)
	MovementLoopAddLocation(NPC, -12.37, -0.25, -134.74, 2, 0)
	MovementLoopAddLocation(NPC, -12.34, -0.15, -144.55, 2, 0)
	MovementLoopAddLocation(NPC, -12.64, -0.1, -154.87, 2, 0)
	MovementLoopAddLocation(NPC, -16.5, -0.02, -161.29, 2, 0)
	MovementLoopAddLocation(NPC, -17.3, -0.09, -164.62, 2, 0)
	MovementLoopAddLocation(NPC, -8.83, -0.05, -173, 2, 0)
	MovementLoopAddLocation(NPC, -9.53, 0.44, -178.75, 2, 0)
	MovementLoopAddLocation(NPC, -15.09, -0.08, -184.99, 2, 0)
	MovementLoopAddLocation(NPC, -16.01, 0.02, -195, 2, 0)
	MovementLoopAddLocation(NPC, -9.19, -0.08, -197.64, 2, 0)
	MovementLoopAddLocation(NPC, 1.48, -0.08, -197.12, 2, 0)
	MovementLoopAddLocation(NPC, 17.01, -0.7, -193.49, 2, 0)
	MovementLoopAddLocation(NPC, 32.22, -0.7, -193, 2, 0)
end



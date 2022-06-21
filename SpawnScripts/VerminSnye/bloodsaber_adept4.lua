--[[
	Script Name		:	bloodsaber_adept4.lua
	Script Purpose	:	Waypoint Path for bloodsaber_adept4.lua
	Script Author	:	Devn00b
	Script Date		:	06/14/2020 03:22:35 PM
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
	MovementLoopAddLocation(NPC, 50.3, -0.7, -180.52, 2, 0)
	MovementLoopAddLocation(NPC, 49.5, -0.7, -185.44, 2, 0)
	MovementLoopAddLocation(NPC, 47.48, -0.7, -188.92, 2, 0)
	MovementLoopAddLocation(NPC, 44.12, -0.7, -191.62, 2, 0)
	MovementLoopAddLocation(NPC, 39.94, -0.7, -192.2, 2, 0)
	MovementLoopAddLocation(NPC, 17.24, -0.7, -192.64, 2, 0)
	MovementLoopAddLocation(NPC, 13.07, -0.64, -194.86, 2, 0)
	MovementLoopAddLocation(NPC, 12.75, -0.7, -199.12, 2, 0)
	MovementLoopAddLocation(NPC, 13.02, -0.7, -203.78, 2, 0)
	MovementLoopAddLocation(NPC, 13.01, -0.7, -197.54, 2, 0)
	MovementLoopAddLocation(NPC, 13.86, -0.83, -194, 2, 0)
	MovementLoopAddLocation(NPC, 17.78, -0.7, -192.34, 2, 0)
	MovementLoopAddLocation(NPC, 42, -0.7, -192.05, 2, 0)
	MovementLoopAddLocation(NPC, 46.62, -0.7, -190.1, 2, 0)
	MovementLoopAddLocation(NPC, 49.04, -0.7, -184.69, 2, 0)
	MovementLoopAddLocation(NPC, 49.84, -0.7, -177.32, 2, 0)
	MovementLoopAddLocation(NPC, 53.04, -0.7, -170.89, 2, 0)
	MovementLoopAddLocation(NPC, 56.96, -0.7, -169.17, 2, 0)
	MovementLoopAddLocation(NPC, 62.12, -0.7, -168.81, 2, 0)
	MovementLoopAddLocation(NPC, 84.85, -0.7, -168.58, 2, 0)
	MovementLoopAddLocation(NPC, 88.3, -0.7, -172.57, 2, 0)
	MovementLoopAddLocation(NPC, 89.37, -0.7, -182.14, 2, 0)
	MovementLoopAddLocation(NPC, 88.3, -0.7, -172.57, 2, 0)
	MovementLoopAddLocation(NPC, 84.85, -0.7, -168.58, 2, 0)
	MovementLoopAddLocation(NPC, 62.12, -0.7, -168.81, 2, 0)
	MovementLoopAddLocation(NPC, 56.96, -0.7, -169.17, 2, 0)
	MovementLoopAddLocation(NPC, 53.04, -0.7, -170.89, 2, 0)
	MovementLoopAddLocation(NPC, 49.84, -0.7, -177.32, 2, 0)
	MovementLoopAddLocation(NPC, 49.04, -0.7, -184.69, 2, 0)
	MovementLoopAddLocation(NPC, 46.62, -0.7, -190.1, 2, 0)
	MovementLoopAddLocation(NPC, 42, -0.7, -192.05, 2, 0)
	MovementLoopAddLocation(NPC, 17.78, -0.7, -192.34, 2, 0)
	MovementLoopAddLocation(NPC, 13.86, -0.83, -194, 2, 0)
	MovementLoopAddLocation(NPC, 13.01, -0.7, -197.54, 2, 0)
	MovementLoopAddLocation(NPC, 13.02, -0.7, -203.78, 2, 0)
	MovementLoopAddLocation(NPC, 12.75, -0.7, -199.12, 2, 0)
	MovementLoopAddLocation(NPC, 13.07, -0.64, -194.86, 2, 0)
	MovementLoopAddLocation(NPC, 17.24, -0.7, -192.64, 2, 0)
	MovementLoopAddLocation(NPC, 39.94, -0.7, -192.2, 2, 0)
	MovementLoopAddLocation(NPC, 44.12, -0.7, -191.62, 2, 0)
	MovementLoopAddLocation(NPC, 47.48, -0.7, -188.92, 2, 0)
	MovementLoopAddLocation(NPC, 49.5, -0.7, -185.44, 2, 0)
	MovementLoopAddLocation(NPC, 50.3, -0.7, -180.52, 2, 0)
end



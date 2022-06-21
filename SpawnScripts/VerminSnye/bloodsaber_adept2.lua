--[[
	Script Name		:	bloodsaber_adept_1.lua
	Script Purpose	:	Waypoint Path for bloodsaber_adept_1.lua
	Script Author	:	Devn00b
	Script Date		:	06/13/2020 11:51:39 AM
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
	MovementLoopAddLocation(NPC, 18.81, -0.12, -162.34, 2, 0)
	MovementLoopAddLocation(NPC, 27.81, 0.02, -159.72, 2, 0)
	MovementLoopAddLocation(NPC, 36.94, 0.46, -159.4, 2, 0)
	MovementLoopAddLocation(NPC, 43.6, 0.35, -159.76, 2, 0)
	MovementLoopAddLocation(NPC, 49.73, -0.17, -160.24, 2, 0)
	MovementLoopAddLocation(NPC, 22.91, -0.12, -159.42, 2, 0)
	MovementLoopAddLocation(NPC, 18.52, -0.19, -163.24, 2, 0)
	MovementLoopAddLocation(NPC, 17.45, -0.14, -165.82, 2, 0)
	MovementLoopAddLocation(NPC, 19.73, -0.08, -182, 2, 0)
	MovementLoopAddLocation(NPC, 19.89, -0.08, -185.57, 2, 0)
	MovementLoopAddLocation(NPC, 24.68, -0.08, -185.42, 2, 0)
	MovementLoopAddLocation(NPC, 26.96, -0.7, -191.82, 2, 0)
	MovementLoopAddLocation(NPC, 43.35, -0.7, -192.34, 2, 0)
	MovementLoopAddLocation(NPC, 48.32, -0.7, -189.03, 2, 0)
	MovementLoopAddLocation(NPC, 51.53, -0.7, -172.22, 2, 0)
	MovementLoopAddLocation(NPC, 60.68, -0.7, -168.58, 2, 0)
	MovementLoopAddLocation(NPC, 88.59, -0.64, -168.63, 2, 0)
	MovementLoopAddLocation(NPC, 84, 0, -151.44, 2, 0)
	MovementLoopAddLocation(NPC, 75.55, 0.53, -138.81, 2, 0)
	MovementLoopAddLocation(NPC, 84, 0, -151.44, 2, 0)
	MovementLoopAddLocation(NPC, 88.59, -0.64, -168.63, 2, 0)
	MovementLoopAddLocation(NPC, 60.68, -0.7, -168.58, 2, 0)
	MovementLoopAddLocation(NPC, 51.53, -0.7, -172.22, 2, 0)
	MovementLoopAddLocation(NPC, 48.32, -0.7, -189.03, 2, 0)
	MovementLoopAddLocation(NPC, 43.35, -0.7, -192.34, 2, 0)
	MovementLoopAddLocation(NPC, 26.96, -0.7, -191.82, 2, 0)
	MovementLoopAddLocation(NPC, 24.68, -0.08, -185.42, 2, 0)
	MovementLoopAddLocation(NPC, 19.89, -0.08, -185.57, 2, 0)
	MovementLoopAddLocation(NPC, 19.73, -0.08, -182, 2, 0)
	MovementLoopAddLocation(NPC, 17.45, -0.14, -165.82, 2, 0)
	MovementLoopAddLocation(NPC, 18.52, -0.19, -163.24, 2, 0)
	MovementLoopAddLocation(NPC, 22.91, -0.12, -159.42, 2, 0)
	MovementLoopAddLocation(NPC, 49.73, -0.17, -160.24, 2, 0)
	MovementLoopAddLocation(NPC, 43.6, 0.35, -159.76, 2, 0)
	MovementLoopAddLocation(NPC, 36.94, 0.46, -159.4, 2, 0)
	MovementLoopAddLocation(NPC, 27.81, 0.02, -159.72, 2, 0)
	MovementLoopAddLocation(NPC, 18.81, -0.12, -162.34, 2, 0)
end



--[[
	Script Name		:	tomb_vermin8.lua
	Script Purpose	:	Waypoint Path for tomb_vermin8.lua
	Script Author	:	Devn00b
	Script Date		:	06/12/2020 08:23:19 PM
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
	MovementLoopAddLocation(NPC, 17.58, -0.14, -165.09, 2, 0)
	MovementLoopAddLocation(NPC, 19.58, -0.03, -161.15, 2, 0)
	MovementLoopAddLocation(NPC, 37.31, 0.45, -161.25, 2, 0)
	MovementLoopAddLocation(NPC, 50.22, -0.23, -161.04, 2, 0)
	MovementLoopAddLocation(NPC, 26.01, -0.13, -161.09, 2, 0)
	MovementLoopAddLocation(NPC, 26.64, 1.21, -145.53, 2, 0)
	MovementLoopAddLocation(NPC, 22.9, 1.22, -138.82, 2, 0)
	MovementLoopAddLocation(NPC, 31.78, 1.21, -148.59, 2, 0)
	MovementLoopAddLocation(NPC, 16.29, 1.21, -146.6, 2, 0)
	MovementLoopAddLocation(NPC, -10.89, -0.23, -146.4, 2, 0)
	MovementLoopAddLocation(NPC, -13.16, -0.21, -134.54, 2, 0)
	MovementLoopAddLocation(NPC, -16.84, -0.11, -126.61, 2, 0)
	MovementLoopAddLocation(NPC, -14.85, 0.54, -119.99, 2, 0)
	MovementLoopAddLocation(NPC, -15.82, 0.39, -127.77, 2, 0)
	MovementLoopAddLocation(NPC, -12.17, 0.29, -138.15, 2, 0)
	MovementLoopAddLocation(NPC, -12.75, 0.37, -152.12, 2, 0)
	MovementLoopAddLocation(NPC, -16.84, -0.01, -162.77, 2, 0)
	MovementLoopAddLocation(NPC, -10.19, -0.02, -174.86, 2, 0)
	MovementLoopAddLocation(NPC, -11.21, 0.44, -178.82, 2, 0)
	MovementLoopAddLocation(NPC, -16.72, 0.02, -192.88, 2, 0)
	MovementLoopAddLocation(NPC, -12.29, 0.16, -197.72, 2, 0)
	MovementLoopAddLocation(NPC, 4.24, -0.08, -197.87, 2, 0)
	MovementLoopAddLocation(NPC, 19.08, -0.08, -180.55, 2, 0)
	MovementLoopAddLocation(NPC, 16.46, -0.08, -165.86, 2, 0)
	MovementLoopAddLocation(NPC, 19.08, -0.08, -180.55, 2, 0)
	MovementLoopAddLocation(NPC, 4.24, -0.08, -197.87, 2, 0)
	MovementLoopAddLocation(NPC, -12.29, 0.16, -197.72, 2, 0)
	MovementLoopAddLocation(NPC, -16.72, 0.02, -192.88, 2, 0)
	MovementLoopAddLocation(NPC, -11.21, 0.44, -178.82, 2, 0)
	MovementLoopAddLocation(NPC, -10.19, -0.02, -174.86, 2, 0)
	MovementLoopAddLocation(NPC, -16.84, -0.01, -162.77, 2, 0)
	MovementLoopAddLocation(NPC, -12.75, 0.37, -152.12, 2, 0)
	MovementLoopAddLocation(NPC, -12.17, 0.29, -138.15, 2, 0)
	MovementLoopAddLocation(NPC, -15.82, 0.39, -127.77, 2, 0)
	MovementLoopAddLocation(NPC, -14.85, 0.54, -119.99, 2, 0)
	MovementLoopAddLocation(NPC, -16.84, -0.11, -126.61, 2, 0)
	MovementLoopAddLocation(NPC, -13.16, -0.21, -134.54, 2, 0)
	MovementLoopAddLocation(NPC, -10.89, -0.23, -146.4, 2, 0)
	MovementLoopAddLocation(NPC, 16.29, 1.21, -146.6, 2, 0)
	MovementLoopAddLocation(NPC, 31.78, 1.21, -148.59, 2, 0)
	MovementLoopAddLocation(NPC, 22.9, 1.22, -138.82, 2, 0)
	MovementLoopAddLocation(NPC, 26.64, 1.21, -145.53, 2, 0)
	MovementLoopAddLocation(NPC, 26.01, -0.13, -161.09, 2, 0)
	MovementLoopAddLocation(NPC, 50.22, -0.23, -161.04, 2, 0)
	MovementLoopAddLocation(NPC, 37.31, 0.45, -161.25, 2, 0)
	MovementLoopAddLocation(NPC, 19.58, -0.03, -161.15, 2, 0)
	MovementLoopAddLocation(NPC, 17.58, -0.14, -165.09, 2, 0)
end



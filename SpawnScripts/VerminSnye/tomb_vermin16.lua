--[[
	Script Name		:	tomb_vermin16.lua
	Script Purpose	:	Waypoint Path for tomb_vermin16.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 08:47:27 PM
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
	MovementLoopAddLocation(NPC, 239.86, -6.86, -103.56, 2, 0)
	MovementLoopAddLocation(NPC, 242.67, -6.86, -120.37, 2, 0)
	MovementLoopAddLocation(NPC, 243.03, -6.66, -130.08, 2, 0)
	MovementLoopAddLocation(NPC, 243.12, -6.86, -135.79, 2, 0)
	MovementLoopAddLocation(NPC, 254.44, -6.86, -135.6, 2, 0)
	MovementLoopAddLocation(NPC, 234.18, -6.86, -136.28, 2, 0)
	MovementLoopAddLocation(NPC, 234.94, -6.86, -157.62, 2, 0)
	MovementLoopAddLocation(NPC, 252.08, -6.86, -156.25, 2, 0)
	MovementLoopAddLocation(NPC, 240.86, -6.86, -173.02, 2, 0)
	MovementLoopAddLocation(NPC, 251.8, -6.86, -168.89, 2, 0)
	MovementLoopAddLocation(NPC, 249.41, -6.86, -173.57, 2, 0)
	MovementLoopAddLocation(NPC, 249.8, -6.98, -181, 2, 0)
	MovementLoopAddLocation(NPC, 258.97, -6.99, -192.11, 2, 0)
	MovementLoopAddLocation(NPC, 256.74, -6.92, -201.05, 2, 0)
	MovementLoopAddLocation(NPC, 252.44, -6.98, -203.48, 2, 0)
	MovementLoopAddLocation(NPC, 226.66, -7.03, -203.34, 2, 0)
	MovementLoopAddLocation(NPC, 213.61, -7.05, -192.05, 2, 0)
	MovementLoopAddLocation(NPC, 207.34, -7.05, -184.37, 2, 0)
	MovementLoopAddLocation(NPC, 208.74, -7.01, -173.01, 2, 0)
	MovementLoopAddLocation(NPC, 207.81, -7.07, -170.63, 2, 0)
	MovementLoopAddLocation(NPC, 197.37, -7.04, -165, 2, 0)
	MovementLoopAddLocation(NPC, 177.91, -7.02, -165.37, 2, 0)
	MovementLoopAddLocation(NPC, 171.95, -6.98, -171.47, 2, 0)
	MovementLoopAddLocation(NPC, 168.77, -6.97, -180.18, 2, 0)
	MovementLoopAddLocation(NPC, 168.89, -6.94, -186.57, 2, 0)
	MovementLoopAddLocation(NPC, 168.77, -6.97, -180.18, 2, 0)
	MovementLoopAddLocation(NPC, 171.95, -6.98, -171.47, 2, 0)
	MovementLoopAddLocation(NPC, 177.91, -7.02, -165.37, 2, 0)
	MovementLoopAddLocation(NPC, 197.37, -7.04, -165, 2, 0)
	MovementLoopAddLocation(NPC, 207.81, -7.07, -170.63, 2, 0)
	MovementLoopAddLocation(NPC, 208.74, -7.01, -173.01, 2, 0)
	MovementLoopAddLocation(NPC, 207.34, -7.05, -184.37, 2, 0)
	MovementLoopAddLocation(NPC, 213.61, -7.05, -192.05, 2, 0)
	MovementLoopAddLocation(NPC, 226.66, -7.03, -203.34, 2, 0)
	MovementLoopAddLocation(NPC, 252.44, -6.98, -203.48, 2, 0)
	MovementLoopAddLocation(NPC, 256.74, -6.92, -201.05, 2, 0)
	MovementLoopAddLocation(NPC, 258.97, -6.99, -192.11, 2, 0)
	MovementLoopAddLocation(NPC, 249.8, -6.98, -181, 2, 0)
	MovementLoopAddLocation(NPC, 249.41, -6.86, -173.57, 2, 0)
	MovementLoopAddLocation(NPC, 251.8, -6.86, -168.89, 2, 0)
	MovementLoopAddLocation(NPC, 240.86, -6.86, -173.02, 2, 0)
	MovementLoopAddLocation(NPC, 252.08, -6.86, -156.25, 2, 0)
	MovementLoopAddLocation(NPC, 234.94, -6.86, -157.62, 2, 0)
	MovementLoopAddLocation(NPC, 234.18, -6.86, -136.28, 2, 0)
	MovementLoopAddLocation(NPC, 254.44, -6.86, -135.6, 2, 0)
	MovementLoopAddLocation(NPC, 243.12, -6.86, -135.79, 2, 0)
	MovementLoopAddLocation(NPC, 243.03, -6.66, -130.08, 2, 0)
	MovementLoopAddLocation(NPC, 242.67, -6.86, -120.37, 2, 0)
	MovementLoopAddLocation(NPC, 239.86, -6.86, -103.56, 2, 0)
end



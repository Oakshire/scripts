--[[
	Script Name		:	rifter_pest2_1.lua
	Script Purpose	:	Waypoint Path for rifter_pest2_1.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 12:55:46 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
          local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 7
    local difficulty1 = 6
    local hp1 = 250
    local power1 = 250
    local difficulty2 = 6
    local hp2 = 215
    local power2 = 215
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
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -207.09, -0.39, -117.2, 2, 0)
	MovementLoopAddLocation(NPC, -200.53, -0.39, -116.91, 2, 0)
	MovementLoopAddLocation(NPC, -201.19, -0.04, -134.49, 2, 0)
	MovementLoopAddLocation(NPC, -211.26, -0.07, -130.99, 2, 0)
	MovementLoopAddLocation(NPC, -198.04, -0.01, -115.88, 2, 0)
	MovementLoopAddLocation(NPC, -192.81, -0.39, -120.84, 2, 0)
	MovementLoopAddLocation(NPC, -193.14, -0.39, -131.07, 2, 0)
	MovementLoopAddLocation(NPC, -169.02, -0.13, -131.19, 2, 0)
	MovementLoopAddLocation(NPC, -170.53, 1.17, -122.78, 2, 0)
	MovementLoopAddLocation(NPC, -178.23, 1.17, -121.42, 2, 0)
	MovementLoopAddLocation(NPC, -171.55, 1.17, -122.44, 2, 0)
	MovementLoopAddLocation(NPC, -171.81, -0.39, -131.77, 2, 0)
	MovementLoopAddLocation(NPC, -186.44, 0, -135.01, 2, 0)
	MovementLoopAddLocation(NPC, -192.46, -0.37, -129.67, 2, 0)
	MovementLoopAddLocation(NPC, -192.98, 0, -115.53, 2, 0)
	MovementLoopAddLocation(NPC, -199.55, -0.13, -116.17, 2, 0)
	MovementLoopAddLocation(NPC, -202.75, -0.39, -123.72, 2, 0)
	MovementLoopAddLocation(NPC, -197.96, -0.39, -127.4, 2, 0)
	MovementLoopAddLocation(NPC, -204.05, -0.39, -123, 2, 0)
	MovementLoopAddLocation(NPC, -211.75, 0, -124.98, 2, 0)
	MovementLoopAddLocation(NPC, -206.52, 0, -134.85, 2, 0)
	MovementLoopAddLocation(NPC, -211.75, 0, -124.98, 2, 0)
	MovementLoopAddLocation(NPC, -204.05, -0.39, -123, 2, 0)
	MovementLoopAddLocation(NPC, -197.96, -0.39, -127.4, 2, 0)
	MovementLoopAddLocation(NPC, -202.75, -0.39, -123.72, 2, 0)
	MovementLoopAddLocation(NPC, -199.55, -0.13, -116.17, 2, 0)
	MovementLoopAddLocation(NPC, -192.98, 0, -115.53, 2, 0)
	MovementLoopAddLocation(NPC, -192.46, -0.37, -129.67, 2, 0)
	MovementLoopAddLocation(NPC, -186.44, 0, -135.01, 2, 0)
	MovementLoopAddLocation(NPC, -171.81, -0.39, -131.77, 2, 0)
	MovementLoopAddLocation(NPC, -171.55, 1.17, -122.44, 2, 0)
	MovementLoopAddLocation(NPC, -178.23, 1.17, -121.42, 2, 0)
	MovementLoopAddLocation(NPC, -170.53, 1.17, -122.78, 2, 0)
	MovementLoopAddLocation(NPC, -169.02, -0.13, -131.19, 2, 0)
	MovementLoopAddLocation(NPC, -193.14, -0.39, -131.07, 2, 0)
	MovementLoopAddLocation(NPC, -192.81, -0.39, -120.84, 2, 0)
	MovementLoopAddLocation(NPC, -198.04, -0.01, -115.88, 2, 0)
	MovementLoopAddLocation(NPC, -211.26, -0.07, -130.99, 2, 0)
	MovementLoopAddLocation(NPC, -201.19, -0.04, -134.49, 2, 0)
	MovementLoopAddLocation(NPC, -200.53, -0.39, -116.91, 2, 0)
	MovementLoopAddLocation(NPC, -207.09, -0.39, -117.2, 2, 0)
end



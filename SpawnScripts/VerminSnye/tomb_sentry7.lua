--[[
	Script Name		:	tomb_sentry7.lua
	Script Purpose	:	Waypoint Path for tomb_sentry7.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 09:29:49 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =13
    local level2 = 14
    local difficulty1 = 6
    local hp1 = 680
    local power1 = 205
    local difficulty2 = 6
    local hp2 = 795
    local power2 = 240
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
	MovementLoopAddLocation(NPC, 249.58, -6.94, -205.29, 2, 0)
	MovementLoopAddLocation(NPC, 257.84, -6.92, -199.52, 2, 0)
	MovementLoopAddLocation(NPC, 257.44, -6.99, -191.06, 2, 0)
	MovementLoopAddLocation(NPC, 248.97, -7.02, -179.44, 2, 0)
	MovementLoopAddLocation(NPC, 248.76, -6.86, -156.3, 2, 0)
	MovementLoopAddLocation(NPC, 249.09, -7.01, -179.54, 2, 0)
	MovementLoopAddLocation(NPC, 258.79, -7.01, -192.51, 2, 0)
	MovementLoopAddLocation(NPC, 254.79, -6.94, -201.76, 2, 0)
	MovementLoopAddLocation(NPC, 250.05, -6.95, -204.71, 2, 0)
	MovementLoopAddLocation(NPC, 230.73, -7.01, -204.39, 2, 0)
	MovementLoopAddLocation(NPC, 223.44, -7.01, -202.18, 2, 0)
	MovementLoopAddLocation(NPC, 217.36, -7.08, -195.76, 2, 0)
	MovementLoopAddLocation(NPC, 211.36, -7, -188.59, 2, 0)
	MovementLoopAddLocation(NPC, 209.54, -6.99, -168.58, 2, 0)
	MovementLoopAddLocation(NPC, 198.54, -7.02, -162.91, 2, 0)
	MovementLoopAddLocation(NPC, 176.09, -7.03, -164.18, 2, 0)
	MovementLoopAddLocation(NPC, 168.96, -7.07, -175.95, 2, 0)
	MovementLoopAddLocation(NPC, 169.12, -6.93, -185.54, 2, 0)
	MovementLoopAddLocation(NPC, 168.96, -7.07, -175.95, 2, 0)
	MovementLoopAddLocation(NPC, 176.09, -7.03, -164.18, 2, 0)
	MovementLoopAddLocation(NPC, 198.54, -7.02, -162.91, 2, 0)
	MovementLoopAddLocation(NPC, 209.54, -6.99, -168.58, 2, 0)
	MovementLoopAddLocation(NPC, 211.36, -7, -188.59, 2, 0)
	MovementLoopAddLocation(NPC, 217.36, -7.08, -195.76, 2, 0)
	MovementLoopAddLocation(NPC, 223.44, -7.01, -202.18, 2, 0)
	MovementLoopAddLocation(NPC, 230.73, -7.01, -204.39, 2, 0)
	MovementLoopAddLocation(NPC, 250.05, -6.95, -204.71, 2, 0)
	MovementLoopAddLocation(NPC, 254.79, -6.94, -201.76, 2, 0)
	MovementLoopAddLocation(NPC, 258.79, -7.01, -192.51, 2, 0)
	MovementLoopAddLocation(NPC, 249.09, -7.01, -179.54, 2, 0)
	MovementLoopAddLocation(NPC, 248.76, -6.86, -156.3, 2, 0)
	MovementLoopAddLocation(NPC, 248.97, -7.02, -179.44, 2, 0)
	MovementLoopAddLocation(NPC, 257.44, -6.99, -191.06, 2, 0)
	MovementLoopAddLocation(NPC, 257.84, -6.92, -199.52, 2, 0)
	MovementLoopAddLocation(NPC, 249.58, -6.94, -205.29, 2, 0)
end



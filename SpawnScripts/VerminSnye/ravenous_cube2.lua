--[[
	Script Name		:	ravenous_cube2_1.lua
	Script Purpose	:	Waypoint Path for ravenous_cube2_1.lua
	Script Author	:	Devn00b
	Script Date		:	06/28/2020 06:20:58 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =14
    local level2 = 15
    local difficulty1 = 6
    local hp1 = 795
    local power1 = 240
    local difficulty2 = 6
    local hp2 = 920
    local power2 = 270
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
	MovementLoopAddLocation(NPC, 140.08, -6.75, -44.71, 2, 0)
	MovementLoopAddLocation(NPC, 153.66, -7.01, -42.25, 2, 0)
	MovementLoopAddLocation(NPC, 155.45, -7.01, -43.45, 2, 0)
	MovementLoopAddLocation(NPC, 155.83, -7.03, -69.94, 2, 0)
	MovementLoopAddLocation(NPC, 161.28, -6.99, -78.24, 2, 0)
	MovementLoopAddLocation(NPC, 170.01, -6.96, -81.99, 2, 0)
	MovementLoopAddLocation(NPC, 180.93, -6.98, -79.48, 2, 0)
	MovementLoopAddLocation(NPC, 167.06, -7.02, -79.39, 2, 0)
	MovementLoopAddLocation(NPC, 161.46, -7.01, -77.98, 2, 0)
	MovementLoopAddLocation(NPC, 157.93, -6.42, -72.46, 2, 0)
	MovementLoopAddLocation(NPC, 156.35, -6.98, -67, 2, 0)
	MovementLoopAddLocation(NPC, 156.43, -7.01, -51.27, 2, 0)
	MovementLoopAddLocation(NPC, 164.29, -7.01, -51.06, 2, 0)
	MovementLoopAddLocation(NPC, 168.79, -7.01, -45.22, 2, 0)
	MovementLoopAddLocation(NPC, 177.78, -7.05, -44.64, 2, 0)
	MovementLoopAddLocation(NPC, 187.44, -6.96, -54.37, 2, 0)
	MovementLoopAddLocation(NPC, 197.28, -6.96, -54.85, 2, 0)
	MovementLoopAddLocation(NPC, 187.44, -6.96, -54.37, 2, 0)
	MovementLoopAddLocation(NPC, 177.78, -7.05, -44.64, 2, 0)
	MovementLoopAddLocation(NPC, 168.79, -7.01, -45.22, 2, 0)
	MovementLoopAddLocation(NPC, 164.29, -7.01, -51.06, 2, 0)
	MovementLoopAddLocation(NPC, 156.43, -7.01, -51.27, 2, 0)
	MovementLoopAddLocation(NPC, 156.35, -6.98, -67, 2, 0)
	MovementLoopAddLocation(NPC, 157.93, -6.42, -72.46, 2, 0)
	MovementLoopAddLocation(NPC, 161.46, -7.01, -77.98, 2, 0)
	MovementLoopAddLocation(NPC, 167.06, -7.02, -79.39, 2, 0)
	MovementLoopAddLocation(NPC, 180.93, -6.98, -79.48, 2, 0)
	MovementLoopAddLocation(NPC, 170.01, -6.96, -81.99, 2, 0)
	MovementLoopAddLocation(NPC, 161.28, -6.99, -78.24, 2, 0)
	MovementLoopAddLocation(NPC, 155.83, -7.03, -69.94, 2, 0)
	MovementLoopAddLocation(NPC, 155.45, -7.01, -43.45, 2, 0)
	MovementLoopAddLocation(NPC, 153.66, -7.01, -42.25, 2, 0)
	MovementLoopAddLocation(NPC, 140.08, -6.75, -44.71, 2, 0)
end



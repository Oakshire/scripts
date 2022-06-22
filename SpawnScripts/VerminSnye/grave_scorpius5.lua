--[[
	Script Name		:	grave_scorpius5.lua
	Script Purpose	:	Waypoint Path for grave_scorpius5.lua
	Script Author	:	Devn00b
	Script Date		:	06/26/2020 04:15:15 PM
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
	MovementLoopAddLocation(NPC, 197.54, -6.94, -56.95, 2, 0)
	MovementLoopAddLocation(NPC, 214.59, -6.9, -56.05, 2, 0)
	MovementLoopAddLocation(NPC, 232.77, -6.45, -39.74, 2, 0)
	MovementLoopAddLocation(NPC, 245.04, -7, -39.48, 2, 0)
	MovementLoopAddLocation(NPC, 244.7, -7, -51.44, 2, 0)
	MovementLoopAddLocation(NPC, 237.23, -6.88, -61.05, 2, 0)
	MovementLoopAddLocation(NPC, 237.1, -6.86, -81.33, 2, 0)
	MovementLoopAddLocation(NPC, 246.61, -6.86, -80.72, 2, 0)
	MovementLoopAddLocation(NPC, 247.18, -6.86, -105.48, 2, 0)
	MovementLoopAddLocation(NPC, 235.11, -6.86, -105.88, 2, 0)
	MovementLoopAddLocation(NPC, 234.68, -6.86, -91.53, 2, 0)
	MovementLoopAddLocation(NPC, 222.12, -6.83, -92.14, 2, 0)
	MovementLoopAddLocation(NPC, 222.34, -6.32, -83.16, 2, 0)
	MovementLoopAddLocation(NPC, 216.89, -6.81, -76.86, 2, 0)
	MovementLoopAddLocation(NPC, 210.19, -6.81, -79.75, 2, 0)
	MovementLoopAddLocation(NPC, 208.44, -6.98, -90.24, 2, 0)
	MovementLoopAddLocation(NPC, 210.19, -6.81, -79.75, 2, 0)
	MovementLoopAddLocation(NPC, 216.89, -6.81, -76.86, 2, 0)
	MovementLoopAddLocation(NPC, 222.34, -6.32, -83.16, 2, 0)
	MovementLoopAddLocation(NPC, 222.12, -6.83, -92.14, 2, 0)
	MovementLoopAddLocation(NPC, 234.68, -6.86, -91.53, 2, 0)
	MovementLoopAddLocation(NPC, 235.11, -6.86, -105.88, 2, 0)
	MovementLoopAddLocation(NPC, 247.18, -6.86, -105.48, 2, 0)
	MovementLoopAddLocation(NPC, 246.61, -6.86, -80.72, 2, 0)
	MovementLoopAddLocation(NPC, 237.1, -6.86, -81.33, 2, 0)
	MovementLoopAddLocation(NPC, 237.23, -6.88, -61.05, 2, 0)
	MovementLoopAddLocation(NPC, 244.7, -7, -51.44, 2, 0)
	MovementLoopAddLocation(NPC, 245.04, -7, -39.48, 2, 0)
	MovementLoopAddLocation(NPC, 232.77, -6.45, -39.74, 2, 0)
	MovementLoopAddLocation(NPC, 214.59, -6.9, -56.05, 2, 0)
	MovementLoopAddLocation(NPC, 197.54, -6.94, -56.95, 2, 0)
end



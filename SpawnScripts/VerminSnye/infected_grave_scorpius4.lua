--[[
	Script Name		:	infected_grave_scorpius4.lua
	Script Purpose	:	Waypoint Path for infected_grave_scorpius4.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 06:49:05 PM
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
	MovementLoopAddLocation(NPC, 253.45, -6.98, -39.13, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 234.51, -7.04, -39.38, 2, 0)
	MovementLoopAddLocation(NPC, 230.09, -6.95, -42.26, 2, 0)
	MovementLoopAddLocation(NPC, 215.46, -7, -53.8, 2, 0)
	MovementLoopAddLocation(NPC, 197.09, -6.9, -53.62, 2, 0)
	MovementLoopAddLocation(NPC, 199.45, -6.45, -68.61, 2, 0)
	MovementLoopAddLocation(NPC, 200.09, -7.04, -92.81, 2, 0)
	MovementLoopAddLocation(NPC, 207.27, -6.96, -92.5, 2, 0)
	MovementLoopAddLocation(NPC, 208.09, -6.75, -82.3, 2, 0)
	MovementLoopAddLocation(NPC, 211.1, -6.84, -79.59, 2, 0)
	MovementLoopAddLocation(NPC, 216.61, -6.84, -78.47, 2, 0)
	MovementLoopAddLocation(NPC, 220.33, -6.82, -79.58, 2, 0)
	MovementLoopAddLocation(NPC, 221.2, -6.32, -83.49, 2, 0)
	MovementLoopAddLocation(NPC, 221.17, -6.9, -104.41, 2, 0)
	MovementLoopAddLocation(NPC, 202.89, -6.83, -121.04, 2, 0)
	MovementLoopAddLocation(NPC, 197.62, -7.06, -120.88, 2, 0)
	MovementLoopAddLocation(NPC, 184.78, -7.02, -107.87, 2, 0)
	MovementLoopAddLocation(NPC, 158.42, -6.32, -107.14, 2, 0)
	MovementLoopAddLocation(NPC, 149.17, -6.98, -101.53, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 158.42, -6.32, -107.14, 2, 0)
	MovementLoopAddLocation(NPC, 184.78, -7.02, -107.87, 2, 0)
	MovementLoopAddLocation(NPC, 197.62, -7.06, -120.88, 2, 0)
	MovementLoopAddLocation(NPC, 202.89, -6.83, -121.04, 2, 0)
	MovementLoopAddLocation(NPC, 221.17, -6.9, -104.41, 2, 0)
	MovementLoopAddLocation(NPC, 221.2, -6.32, -83.49, 2, 0)
	MovementLoopAddLocation(NPC, 220.33, -6.82, -79.58, 2, 0)
	MovementLoopAddLocation(NPC, 216.61, -6.84, -78.47, 2, 0)
	MovementLoopAddLocation(NPC, 211.1, -6.84, -79.59, 2, 0)
	MovementLoopAddLocation(NPC, 208.09, -6.75, -82.3, 2, 0)
	MovementLoopAddLocation(NPC, 207.27, -6.96, -92.5, 2, 0)
	MovementLoopAddLocation(NPC, 200.09, -7.04, -92.81, 2, 0)
	MovementLoopAddLocation(NPC, 199.45, -6.45, -68.61, 2, 0)
	MovementLoopAddLocation(NPC, 197.09, -6.9, -53.62, 2, 0)
	MovementLoopAddLocation(NPC, 215.46, -7, -53.8, 2, 0)
	MovementLoopAddLocation(NPC, 230.09, -6.95, -42.26, 2, 0)
	MovementLoopAddLocation(NPC, 234.51, -7.04, -39.38, 2, 0)
	MovementLoopAddLocation(NPC, 253.45, -6.98, -39.13, 2, math.random(0,15))
end



--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432800.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432800.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:35 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
     local Level = GetLevel(NPC)
    local level1 = 1
    local level2 = 12
    local difficulty1 = 6
    local hp1 = 30
    local power1 = 25
    local difficulty2 = 6
    local hp2 = 45
    local power2 = 35
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
	MovementLoopAddLocation(NPC, 103, -1.49, 161.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 95.42, -1.55, 179.24, 2, 0)
	MovementLoopAddLocation(NPC, 79.36, -1.61, 203.88, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 94.22, -1.1, 191.21, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 87.93, -1.34, 216.17, 2, 0)
	MovementLoopAddLocation(NPC, 82.17, -1.54, 218.63, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 82.17, -1.5, 215.12, 2, 0)
	MovementLoopAddLocation(NPC, 85.98, -1.42, 199.94, 2, 0)
	MovementLoopAddLocation(NPC, 88.07, -1.36, 196.92, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 79.66, -1.57, 205.42, 2, 0)
	MovementLoopAddLocation(NPC, 77.79, -1.71, 215, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 86.26, -1.58, 209.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 93.65, -1.02, 180.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 93.95, -0.91, 197.37, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 82.37, -0.72, 203.33, 2, 0)
	MovementLoopAddLocation(NPC, 75.78, -0.55, 210.36, 2, 0)
	MovementLoopAddLocation(NPC, 74.27, -0.45, 213.78, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 91.22, 0.67, 185.65, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 87.75, -1.36, 192.23, 2, 0)
	MovementLoopAddLocation(NPC, 86.02, -1.51, 193.39, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 78.94, -1.61, 204.23, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 93.96, -0.58, 191.21, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 96.74, -1.12, 175.79, 2, 0)
end



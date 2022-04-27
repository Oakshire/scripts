--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432925.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432925.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:25 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 1
    local level2 = 2
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
	MovementLoopAddLocation(NPC, 78.95, -0.49, 204.3, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 77.3, -1.29, 216.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 71.7, -1.09, 210.08, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 88.6, -0.51, 208.06, 2, 0)
	MovementLoopAddLocation(NPC, 100.01, 0.51, 210.86, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 88.78, -0.99, 183.35, 2, 0)
	MovementLoopAddLocation(NPC, 89.13, -1.11, 181.08, 2, 0)
	MovementLoopAddLocation(NPC, 90.89, -1.21, 179.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 98.3, -1.27, 176.47, 2, 0)
	MovementLoopAddLocation(NPC, 107.13, -1.31, 178.2, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 111.81, -0.91, 166.89, 2, 0)
	MovementLoopAddLocation(NPC, 115.03, -0.69, 163.57, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 109.39, -1.34, 193.14, 2, 0)
	MovementLoopAddLocation(NPC, 107.43, -1.67, 198.27, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 102, -1.4, 175.84, 2, 0)
	MovementLoopAddLocation(NPC, 100.09, -1.29, 171.43, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 87.28, -0.71, 193.5, 2, 0)
end



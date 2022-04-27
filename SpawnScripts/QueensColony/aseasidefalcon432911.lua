--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432911.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432911.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:20 
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
	MovementLoopAddLocation(NPC, 89.67, -0.36, 193.47, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 103.39, -0.4, 198.57, 2, 0)
	MovementLoopAddLocation(NPC, 107.2, -0.45, 198.67, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 71.74, 0.39, 206.01, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 96.52, -1.77, 187.95, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 96.72, -1.7, 185.32, 2, 0)
	MovementLoopAddLocation(NPC, 100.95, -1.51, 180.15, 2, 0)
	MovementLoopAddLocation(NPC, 102.74, -1.34, 175.9, 2, 0)
	MovementLoopAddLocation(NPC, 113.37, -0.99, 165.54, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 111.67, -0.79, 167.69, 2, 0)
	MovementLoopAddLocation(NPC, 95.54, -0.39, 179.35, 2, 0)
	MovementLoopAddLocation(NPC, 92.05, 0.27, 185.21, 2, 0)
	MovementLoopAddLocation(NPC, 86.05, 0.36, 193.79, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 87.93, -0.31, 208.8, 2, 0)
	MovementLoopAddLocation(NPC, 87.85, -0.48, 216.78, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 82.56, -0.75, 217.12, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 82.44, -0.65, 214.67, 2, 0)
	MovementLoopAddLocation(NPC, 83.16, -0.53, 211.52, 2, 0)
	MovementLoopAddLocation(NPC, 104.44, -0.35, 182.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 98.22, 0.47, 177.53, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 94.6, 0.29, 182.28, 2, 0)
end


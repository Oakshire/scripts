--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432866.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432866.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:14 
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
	MovementLoopAddLocation(NPC, 92.53, -0.75, 214.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 92.08, -0.8, 215.95, 2, 0)
	MovementLoopAddLocation(NPC, 89.71, -1.61, 218.43, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 87.66, -1.2, 214.61, 2, 0)
	MovementLoopAddLocation(NPC, 88.23, -0.95, 212.6, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 101.25, -0.99, 191.47, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 87.43, -1.61, 206.31, 2, 0)
	MovementLoopAddLocation(NPC, 86.52, -1.75, 209.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 65.66, -1.8, 213.35, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 90.82, -1.32, 189.48, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 102.6, -1.2, 194.15, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 97.42, -0.91, 210.59, 2, 0)
end



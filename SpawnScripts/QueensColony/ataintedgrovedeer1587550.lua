--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedgrovedeer1587550.lua
	Script Purpose	:	Waypoint Path for ataintedgrovedeer1587550.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:46:19 
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
	MovementLoopAddLocation(NPC, 165.13, 1.39, 4.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.87, 1.4, 40.83, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 159.43, 1.41, 36.68, 2, 0)
	MovementLoopAddLocation(NPC, 142.61, 0.55, 21.06, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 169.1, 1.38, 12.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 177, 1.35, 1.87, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 159.36, 1.38, 25.47, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 179.09, 1.34, 12.44, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 177.39, 1.35, 12.24, 2, 0)
	MovementLoopAddLocation(NPC, 155.05, 1.35, 27.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 154.02, 1.2, 21.06, 2, 0)
	MovementLoopAddLocation(NPC, 143.51, 0.31, 1.96, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 153.55, 0.77, 5.14, 2, 0)
end



--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedgrovedeer1587535.lua
	Script Purpose	:	Waypoint Path for ataintedgrovedeer1587535.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:41:05 
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
	MovementLoopAddLocation(NPC, 138.49, 1.47, 93.47, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 141.73, 1.46, 84.33, 2, 0)
	MovementLoopAddLocation(NPC, 151.33, 1.43, 71.41, 2, 0)
	MovementLoopAddLocation(NPC, 154.92, 1.42, 68.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 159.17, 1.4, 62.63, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.98, 1.4, 63.71, 2, 0)
	MovementLoopAddLocation(NPC, 163.94, 1.38, 63.85, 2, 0)
	MovementLoopAddLocation(NPC, 186.51, 1.31, 46.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 167.12, 1.38, 44.34, 2, 0)
	MovementLoopAddLocation(NPC, 157.91, 1.41, 40.89, 2, 0)
	MovementLoopAddLocation(NPC, 147.13, 1.45, 41.3, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 159.48, 1.4, 46.61, 2, 0)
	MovementLoopAddLocation(NPC, 168.93, 1.37, 54.78, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 180.37, 1.33, 18.51, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 178.63, 1.34, 22.64, 2, 0)
	MovementLoopAddLocation(NPC, 183.18, 1.31, 75.27, 2, 0)
	MovementLoopAddLocation(NPC, 192.75, 1.27, 83.75, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 187.8, 1.29, 82.45, 2, 0)
	MovementLoopAddLocation(NPC, 178.94, 1.33, 83.99, 2, 0)
	MovementLoopAddLocation(NPC, 157.5, 1.41, 67.08, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.12, 1.43, 70.79, 2, 0)
	MovementLoopAddLocation(NPC, 141.87, 1.46, 84.89, 2, 0)
end



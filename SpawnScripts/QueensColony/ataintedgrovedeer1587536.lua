--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedgrovedeer1587536.lua
	Script Purpose	:	Waypoint Path for ataintedgrovedeer1587536.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:41:16 
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
	MovementLoopAddLocation(NPC, 127.27, 1.55, 72.92, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 138.45, 1.48, 61.98, 2, 0)
	MovementLoopAddLocation(NPC, 151.35, 1.23, 41.46, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 132.73, 1.07, 39.52, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.19, 1.23, 49.28, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 141.36, 1.47, 44.39, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 135.36, 1.35, 60.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 139.36, 1.48, 50.86, 2, 0)
	MovementLoopAddLocation(NPC, 146.52, 1.45, 42.13, 2, 0)
	MovementLoopAddLocation(NPC, 151.31, 1.37, 30.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 153.23, 1.29, 52.26, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.62, 1.43, 58.24, 2, 0)
	MovementLoopAddLocation(NPC, 154.21, 1.42, 65.83, 2, 0)
	MovementLoopAddLocation(NPC, 162.41, 1.39, 78.07, 2, math.random(10, 24))
end



--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428150.lua
	Script Purpose	:	Waypoint Path for agrovedeer428150.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:16:41 
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
	MovementLoopAddLocation(NPC, 71.9, -3.8, 216.1, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 74.78, -4.32, 228.73, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 64.07, -4.39, 222.84, 2, 0)
	MovementLoopAddLocation(NPC, 54.33, -4.24, 219.63, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 71.64, -4.51, 226.67, 2, 0)
	MovementLoopAddLocation(NPC, 87.24, -4.54, 217.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 65.76, -3.8, 215.84, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 63.57, -3.8, 215.76, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 71.83, -3.8, 218.04, 2, math.random(10, 24))
end



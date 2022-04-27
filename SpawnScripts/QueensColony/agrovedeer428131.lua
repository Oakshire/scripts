--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428131.lua
	Script Purpose	:	Waypoint Path for agrovedeer428131.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:16:33 
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
	MovementLoopAddLocation(NPC, 55.69, -4.25, 217.71, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 63.09, -3.8, 215.88, 2, 0)
	MovementLoopAddLocation(NPC, 68.67, -3.8, 212.37, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 65.84, -4.49, 224.84, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 81.21, -4.54, 218.9, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 60.93, -3.92, 218.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 76.14, -4.12, 219.68, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 77.28, -3.8, 214.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 57.75, -4.26, 219.68, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 70.51, -3.8, 212.15, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 58.69, -4.18, 216.96, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 70.71, -4.21, 221.84, 2, math.random(10, 24))
end



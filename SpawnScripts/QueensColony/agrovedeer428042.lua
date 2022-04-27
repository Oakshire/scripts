--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428042.lua
	Script Purpose	:	Waypoint Path for agrovedeer428042.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:59 
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
	MovementLoopAddLocation(NPC, 119.45, -3.63, 161.09, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 103.37, -3.99, 172.77, 2, 0)
	MovementLoopAddLocation(NPC, 102.27, -4, 177.78, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 103.81, -4.09, 168.3, 2, 0)
	MovementLoopAddLocation(NPC, 106.88, -3.96, 157.17, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 109.07, -3.8, 172.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 130.02, -3.77, 163.09, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 96.48, -4.33, 172.67, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 117.82, -3.8, 163.15, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 104.88, -3.98, 171.42, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 97.86, -3.6, 194.47, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 107.6, -3.84, 188.2, 2, 0)
	MovementLoopAddLocation(NPC, 112.98, -4, 186.23, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 106.5, -3.77, 185.94, 2, 0)
	MovementLoopAddLocation(NPC, 101.59, -4, 182.12, 2, 0)
	MovementLoopAddLocation(NPC, 97.83, -4, 181.19, 2, 0)
	MovementLoopAddLocation(NPC, 94.07, -4.2, 176.67, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 96.24, -4.24, 175.27, 2, 0)
	MovementLoopAddLocation(NPC, 105.35, -3.8, 161.03, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 110.79, -3.8, 159.61, 2, 0)
end



--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428045.lua
	Script Purpose	:	Waypoint Path for agrovedeer428045.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:08 
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
	MovementLoopAddLocation(NPC, 83.88, -4.55, 196.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 102.18, -4, 182.29, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 122.65, -3.62, 175.26, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 119.76, -3.76, 178.13, 2, 0)
	MovementLoopAddLocation(NPC, 116.17, -3.8, 179.38, 2, 0)
	MovementLoopAddLocation(NPC, 102.1, -3.71, 196.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 130.4, -3.9, 186.35, 2, 0)
	MovementLoopAddLocation(NPC, 130.69, -3.53, 182.53, 2, 0)
	MovementLoopAddLocation(NPC, 124.98, -3.6, 167.1, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 120.22, -3.6, 160.34, 2, 0)
	MovementLoopAddLocation(NPC, 119.34, -3.76, 157.22, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 112.55, -3.8, 162.9, 2, 0)
	MovementLoopAddLocation(NPC, 96.46, -4.33, 172.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 110.6, -3.8, 172.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 104.99, -3.83, 174.99, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 85.46, -4.39, 204.22, 2, math.random(10, 24))
end



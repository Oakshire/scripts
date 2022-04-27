--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428041.lua
	Script Purpose	:	Waypoint Path for agrovedeer428041.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:55 
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
	MovementLoopAddLocation(NPC, 97.98, -4, 178.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 114.02, -3.9, 163.14, 2, 0)
	MovementLoopAddLocation(NPC, 118.69, -3.6, 160.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 116.12, -3.88, 163.8, 2, 0)
	MovementLoopAddLocation(NPC, 113.93, -3.95, 165.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 102.18, -4, 176.12, 2, 0)
	MovementLoopAddLocation(NPC, 100.24, -4, 180.25, 2, 0)
	MovementLoopAddLocation(NPC, 96.34, -4.01, 183.62, 2, 0)
	MovementLoopAddLocation(NPC, 92.5, -4.25, 184.63, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 100.12, -3.95, 200.04, 2, 0)
	MovementLoopAddLocation(NPC, 103.6, -3.99, 203.76, 2, 0)
	MovementLoopAddLocation(NPC, 103.54, -4.16, 205.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 103.91, -4.02, 203.71, 2, 0)
	MovementLoopAddLocation(NPC, 103.95, -4.05, 200.16, 2, 0)
	MovementLoopAddLocation(NPC, 102.98, -3.97, 198.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 79.87, -4.21, 200.75, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 104.14, -3.56, 193.67, 2, 0)
	MovementLoopAddLocation(NPC, 109.03, -4.06, 190.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 102.88, -3.69, 195.77, 2, 0)
	MovementLoopAddLocation(NPC, 96.44, -4.07, 199.92, 2, 0)
	MovementLoopAddLocation(NPC, 92.45, -4.2, 204.43, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 96.66, -3.84, 185.15, 2, 0)
	MovementLoopAddLocation(NPC, 96.65, -4.05, 180.18, 2, 0)
end


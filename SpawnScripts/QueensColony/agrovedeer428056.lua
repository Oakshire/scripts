--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428056.lua
	Script Purpose	:	Waypoint Path for agrovedeer428056.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:20:14 
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
	MovementLoopAddLocation(NPC, 147.9, -3.78, 178.86, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 166.57, -3.08, 180.63, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.04, -3.29, 153.23, 2, 0)
	MovementLoopAddLocation(NPC, 150.97, -3.07, 147.2, 2, 0)
	MovementLoopAddLocation(NPC, 147.21, -3.5, 142.68, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.48, -3.39, 149.34, 2, 0)
	MovementLoopAddLocation(NPC, 162.38, -3.3, 166.17, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.48, -3.16, 171.25, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 159.11, -2.23, 190.38, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 171.52, -3.34, 139.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 177.64, -3.2, 143.68, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.15, -3.01, 139.7, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 177.6, -3.06, 145.75, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 147.78, -3.41, 141.99, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 146.81, -3.5, 169.03, 2, 0)
end



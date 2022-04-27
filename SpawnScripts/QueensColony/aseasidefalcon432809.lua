--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432809.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432809.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:33 
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
	MovementLoopAddLocation(NPC, 178.05, 0.97, 164.37, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 174.68, 1.07, 168.33, 2, 0)
	MovementLoopAddLocation(NPC, 171.49, 1.28, 185.17, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 175.76, 2.13, 157.17, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 161.87, -0.46, 203.12, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 150.35, 0.22, 189.24, 2, 0)
	MovementLoopAddLocation(NPC, 143.91, 0.76, 187.09, 2, 0)
	MovementLoopAddLocation(NPC, 139.95, 1.11, 180.32, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 146.19, -0.79, 178.72, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 165.56, 0.11, 167.14, 2, 0)
	MovementLoopAddLocation(NPC, 171.81, 0.88, 162.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.36, 1.53, 151.6, 2, 0)
	MovementLoopAddLocation(NPC, 149.54, 2.15, 143.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 156.05, 2.37, 133.58, 2, 0)
	MovementLoopAddLocation(NPC, 160.11, 2.61, 129.28, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.18, 2.15, 132.68, 2, 0)
	MovementLoopAddLocation(NPC, 167.92, 1.52, 147.86, 2, 0)
	MovementLoopAddLocation(NPC, 167.91, 1.14, 159.97, 2, 0)
end



--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432928.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432928.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:27 
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
	MovementLoopAddLocation(NPC, 74.59, 0.49, 206.11, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 77.78, -0.33, 209.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 81.19, -0.39, 203.93, 2, 0)
	MovementLoopAddLocation(NPC, 90.02, -0.46, 194.61, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 110.08, -0.41, 186.06, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 95.51, -0.91, 205.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 93.72, 0.31, 182.33, 2, 0)
	MovementLoopAddLocation(NPC, 92.29, 0.37, 178.87, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 92.86, 0.33, 182.57, 2, 0)
	MovementLoopAddLocation(NPC, 92.08, 0.34, 189.18, 2, 0)
	MovementLoopAddLocation(NPC, 85.27, 0.38, 209.18, 2, 0)
	MovementLoopAddLocation(NPC, 78.99, 0.33, 215.47, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 82.9, 0.29, 208.68, 2, 0)
	MovementLoopAddLocation(NPC, 84.2, -0.29, 203.34, 2, 0)
	MovementLoopAddLocation(NPC, 85.13, -0.35, 193.11, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 82.09, -0.49, 216, 2, 0)
	MovementLoopAddLocation(NPC, 83.35, -0.55, 218.9, 2, math.random(10, 24))
end



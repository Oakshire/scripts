--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432812.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432812.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:42 
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
	MovementLoopAddLocation(NPC, 175.64, -0.52, 160.08, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 173.42, 0.29, 166.72, 2, 0)
	MovementLoopAddLocation(NPC, 173.13, 1.18, 175, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 165.29, 1.59, 174.16, 2, 0)
	MovementLoopAddLocation(NPC, 151.73, 2.11, 168.19, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 183.61, 1.98, 189.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 154.17, 1.07, 191.09, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 155.5, 0.6, 183.98, 2, 0)
	MovementLoopAddLocation(NPC, 161.55, -0.45, 168.69, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163.25, 0.12, 171.86, 2, 0)
	MovementLoopAddLocation(NPC, 164.17, 0.52, 174.44, 2, 0)
	MovementLoopAddLocation(NPC, 181.62, 1.79, 191.31, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 169.55, 0.44, 182.43, 2, 0)
	MovementLoopAddLocation(NPC, 150.36, -0.46, 172.51, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 147.99, 0.52, 184.19, 2, 0)
	MovementLoopAddLocation(NPC, 143.81, 1.13, 189.15, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.01, 0.15, 172.16, 2, 0)
	MovementLoopAddLocation(NPC, 173.63, -0.72, 154.14, 2, math.random(10, 24))
end



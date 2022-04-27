--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432817.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432817.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:56 
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
	MovementLoopAddLocation(NPC, 170.03, 1.76, 199.43, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 173.35, 1.94, 197.35, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 174.33, 2.01, 187.16, 2, 0)
	MovementLoopAddLocation(NPC, 175.51, 2.12, 159.65, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 179.82, 1.52, 155.86, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 175.98, 1.31, 143.47, 2, 0)
	MovementLoopAddLocation(NPC, 175.86, 1.22, 137.42, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 159.96, 0.36, 139.44, 2, 0)
	MovementLoopAddLocation(NPC, 143, -0.41, 137.69, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 142.08, -1.06, 141.75, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 158.28, -0.41, 141.07, 2, 0)
	MovementLoopAddLocation(NPC, 181.41, 1.02, 147.88, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163.71, 1.05, 164.63, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 166.41, 1.26, 171.85, 2, 0)
end



--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432814.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432814.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:47 
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
	MovementLoopAddLocation(NPC, 169.86, 1.51, 187.38, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 173.7, -0.48, 151.46, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 171.55, 1.88, 139.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 184.07, 2.15, 141.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 191.59, 1.57, 156.22, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 184.14, 1.02, 152.04, 2, 0)
	MovementLoopAddLocation(NPC, 177.93, -0.57, 150.07, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.88, -0.75, 147.49, 2, 0)
	MovementLoopAddLocation(NPC, 150.33, -0.84, 146.71, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 150.71, -0.47, 149.35, 2, 0)
	MovementLoopAddLocation(NPC, 146.12, 0.94, 160.03, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 168.31, 1.37, 184.3, 2, 0)
end



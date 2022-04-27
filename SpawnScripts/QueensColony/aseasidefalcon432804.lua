--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432804.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432804.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:20 
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
	MovementLoopAddLocation(NPC, 159.96, -0.45, 150.35, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.35, 1.81, 151.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 165.43, 0.91, 138.1, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 162.36, 1.19, 159.7, 2, 0)
	MovementLoopAddLocation(NPC, 162.24, 1.51, 168.78, 2, 0)
	MovementLoopAddLocation(NPC, 159.76, 1.98, 176.65, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 175.61, 0.75, 145.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 190.87, 0.82, 157.92, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 158.33, 0.91, 151.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 173.23, 1.21, 184.61, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 173.13, 0.58, 178.88, 2, 0)
	MovementLoopAddLocation(NPC, 175.6, -0.55, 149.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163.55, 0.83, 181.12, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.82, 1.97, 194.84, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 159.29, 2.22, 190.51, 2, math.random(10, 24))
end



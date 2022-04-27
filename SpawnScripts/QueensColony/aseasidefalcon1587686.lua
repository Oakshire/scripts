--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon1587686.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587686.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:07:59 
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
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 233.49, -1.45, 94.73, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 242.69, 1.67, 78.29, 2, 0)
	MovementLoopAddLocation(NPC, 244, 3.83, 69.08, 2, 0)
	MovementLoopAddLocation(NPC, 243.41, 4.74, 65.05, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 245.85, -1.7, 82.18, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 262.07, 1.73, 111.34, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 270.3, 2.17, 107.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 254.75, 2.85, 90.77, 2, 0)
	MovementLoopAddLocation(NPC, 253.32, 3.15, 77.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 246.91, -1.65, 98.14, 2, math.random(10, 24))
end
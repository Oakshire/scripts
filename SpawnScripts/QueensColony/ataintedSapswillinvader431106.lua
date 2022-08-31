--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431106.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431106.lua
	Script Author	:	Rylec
	Script Date	:	11-19-2020 05:12:27 
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
	MovementLoopAddLocation(NPC, 175.83, -3.2, 140.03, 2)
	MovementLoopAddLocation(NPC, 156.39, -2.59, 146.53, 2)
	MovementLoopAddLocation(NPC, 149.74, -3.55, 150.17, 2)
	MovementLoopAddLocation(NPC, 142.26, -3.46, 153.14, 2)
	MovementLoopAddLocation(NPC, 135.26, -3.5, 158.76, 2)
	MovementLoopAddLocation(NPC, 75.82, -4.48, 180.13, 2)
	MovementLoopAddLocation(NPC, 68.99, -4.49, 177.68, 2, 0, "waypointsLoop")
end

function waypointsLoop(NPC)
	MovementLoopAddLocation(NPC, 60.48, -4, 189.65, 2, 0)
	MovementLoopAddLocation(NPC, 72.34, -4.3, 169.86, 2, 0)
	MovementLoopAddLocation(NPC, 67.34, -4.28, 154.56, 2, 0)
	MovementLoopAddLocation(NPC, 71.9, -4.3, 170.88, 2, 0)
end
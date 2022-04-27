--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431155.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431155.lua
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
	MoveToLocation(NPC, 169.71, -3.58, 203.79, 2)
	MoveToLocation(NPC, 152.57, -3.59, 200.06, 2)
	MoveToLocation(NPC, 149.96, -3.81, 199, 2)
	MoveToLocation(NPC, 144.37, -4.05, 197.9, 2)
	MoveToLocation(NPC, 136.16, -4.11, 194.22, 2)
	MoveToLocation(NPC, 129.4, -4.08, 192.67, 2)
	MoveToLocation(NPC, 79.71, -4.33, 185.89, 2)
	MoveToLocation(NPC, 67.56, -4.17, 189.22, 2)
	MoveToLocation(NPC, 65.63, -4, 188.88, 2)
	MoveToLocation(NPC, 61.5, -4, 183.71, 2)
	MoveToLocation(NPC, 76.53, -4.32, 198.53, 2)
	MoveToLocation(NPC, 75.82, -4.48, 180.13, 2)
	MoveToLocation(NPC, 68.99, -4.49, 177.68, 2, "waypointsLoop")
end

function waypointsLoop(NPC)
	MovementLoopAddLocation(NPC, 60.48, -4, 189.65, 2, 0)
	MovementLoopAddLocation(NPC, 72.34, -4.3, 169.86, 2, 0)
	MovementLoopAddLocation(NPC, 67.34, -4.28, 154.56, 2, 0)
	MovementLoopAddLocation(NPC, 71.9, -4.3, 170.88, 2, 0)
end
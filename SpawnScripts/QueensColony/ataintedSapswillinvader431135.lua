--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431135.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431135.lua
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
	MoveToLocation(NPC, 157.76, -3.4, 202.71, 2)
	MoveToLocation(NPC, 146.93, -4.1, 201.48, 2)
	MoveToLocation(NPC, 134.69, -4.08, 193.86, 2)
	MoveToLocation(NPC, 123.22, -4.12, 189.4, 2)
	MoveToLocation(NPC, 119.19, -4.09, 188.91, 2)
	MoveToLocation(NPC, 110.8, -4, 185.04, 2)
	MoveToLocation(NPC, 107.18, -4, 181.98, 2)
	MoveToLocation(NPC, 82.43, -4.49, 171.83, 2)
	MoveToLocation(NPC, 72.49, -4.30, 170.27, 2, "waypointsLoop")
end

function waypointsLoop(NPC)
	MovementLoopAddLocation(NPC, 60.48, -4, 189.65, 2, 0)
	MovementLoopAddLocation(NPC, 72.34, -4.3, 169.86, 2, 0)
	MovementLoopAddLocation(NPC, 67.34, -4.28, 154.56, 2, 0)
	MovementLoopAddLocation(NPC, 71.9, -4.3, 170.88, 2, 0)
end
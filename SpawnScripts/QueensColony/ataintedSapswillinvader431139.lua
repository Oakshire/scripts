--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431139.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431139.lua
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
	MovementLoopAddLocation(NPC, 161.92, -2.42, 184.16, 2)
	MovementLoopAddLocation(NPC, 135.65, -3.28, 184.07, 2)
	MovementLoopAddLocation(NPC, 129.93, -3.66, 181.17, 2)
	MovementLoopAddLocation(NPC, 123.24, -3.72, 181.18, 2)
	MovementLoopAddLocation(NPC, 118.27, -3.8, 182.2, 2)
	MovementLoopAddLocation(NPC, 94.6, -4.15, 181.95, 2)
	MovementLoopAddLocation(NPC, 91.95, -4.27, 181.14, 2)
	MovementLoopAddLocation(NPC, 87.64, -4.36, 180.98, 2)
	MovementLoopAddLocation(NPC, 83.59, -4.34, 180.14, 2)
	MovementLoopAddLocation(NPC, 75.82, -4.48, 180.13, 2)
	MovementLoopAddLocation(NPC, 68.99, -4.49, 177.68, 2, 0, "waypointsLoop")
end

function waypointsLoop(NPC)
	MovementLoopAddLocation(NPC, 60.48, -4, 189.65, 2, 0)
	MovementLoopAddLocation(NPC, 72.34, -4.3, 169.86, 2, 0)
	MovementLoopAddLocation(NPC, 67.34, -4.28, 154.56, 2, 0)
	MovementLoopAddLocation(NPC, 71.9, -4.3, 170.88, 2, 0)
end
--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431143.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431143.lua
	Script Author	:	Rylec
	Script Date	:	11-19-2020 05:12:27 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MoveToLocation(NPC, 187.19, -4.07, 179.96, 2)
	MoveToLocation(NPC, 124.23, -3.68, 181.12, 2)
	MoveToLocation(NPC, 118.27, -3.8, 182.15, 2)
	MoveToLocation(NPC, 94.77, -4.14, 182.01, 2)
	MoveToLocation(NPC, 91.55, -4.29, 181.14, 2)
	MoveToLocation(NPC, 87.93, -4.36, 180.96, 2)
	MoveToLocation(NPC, 83.07, -4.34, 180.09, 2)
	MoveToLocation(NPC, 75.82, -4.48, 180.13, 2)
	MoveToLocation(NPC, 68.99, -4.49, 177.68, 2, "waypointsLoop")
end

function waypointsLoop(NPC)
	MovementLoopAddLocation(NPC, 60.48, -4, 189.65, 2, 0)
	MovementLoopAddLocation(NPC, 72.34, -4.3, 169.86, 2, 0)
	MovementLoopAddLocation(NPC, 67.34, -4.28, 154.56, 2, 0)
	MovementLoopAddLocation(NPC, 71.9, -4.3, 170.88, 2, 0)
end
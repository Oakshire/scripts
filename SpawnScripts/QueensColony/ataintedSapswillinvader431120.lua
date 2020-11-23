--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431120.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431120.lua
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
	MoveToLocation(NPC, 184.32, -3.93, 182.86, 2)
	MoveToLocation(NPC, 144.39, -2.96, 183.07, 2)
	MoveToLocation(NPC, 135.68, -3.47, 179.97, 2)
	MoveToLocation(NPC, 123.73, -3.73, 180.13, 2)
	MoveToLocation(NPC, 119.59, -3.8, 179.02, 2)
	MoveToLocation(NPC, 103.25, -4, 180.26, 2)
	MoveToLocation(NPC, 99.37, -4, 181.02, 2)
	MoveToLocation(NPC, 93.94, -4.18, 181.37, 2)
	MoveToLocation(NPC, 87.95, -4.36, 180.09, 2)
	MoveToLocation(NPC, 75.82, -4.48, 180.13, 2)
	MoveToLocation(NPC, 68.99, -4.49, 177.68, 2, "waypointsLoop")
end

function waypointsLoop(NPC)
	MovementLoopAddLocation(NPC, 60.48, -4, 189.65, 2, 0)
	MovementLoopAddLocation(NPC, 72.34, -4.3, 169.86, 2, 0)
	MovementLoopAddLocation(NPC, 67.34, -4.28, 154.56, 2, 0)
	MovementLoopAddLocation(NPC, 71.9, -4.3, 170.88, 2, 0)
end
--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431097.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431097.lua
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
	MoveToLocation(NPC, 182.59, -3, 140.42, 2)
	MoveToLocation(NPC, 174.71, -3.41, 144.61, 2)
	MoveToLocation(NPC, 122.33, -3.8, 163.48, 2)
	MoveToLocation(NPC, 75.82, -4.48, 180.13, 2)
	MoveToLocation(NPC, 68.99, -4.49, 177.68, 2, "waypointsLoop")
end

function waypointsLoop(NPC)
	MovementLoopAddLocation(NPC, 60.48, -4, 189.65, 2, 0)
	MovementLoopAddLocation(NPC, 72.34, -4.3, 169.86, 2, 0)
	MovementLoopAddLocation(NPC, 67.34, -4.28, 154.56, 2, 0)
	MovementLoopAddLocation(NPC, 71.9, -4.3, 170.88, 2, 0)
end

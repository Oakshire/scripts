--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431107.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431107.lua
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
	MoveToLocation(NPC, 168.66, -3.44, 141.73, 2)
	MoveToLocation(NPC, 153.14, -2.61, 146.22, 2)
	MoveToLocation(NPC, 149.1, -3.22, 146.27, 2)
	MoveToLocation(NPC, 136.55, -3.61, 149.23, 2)
	MoveToLocation(NPC, 113.55, -3.8, 159.45, 2)
	MoveToLocation(NPC, 109.82, -3.8, 159.94, 2)
	MoveToLocation(NPC, 83.92, -4.54, 171.92, 2)
	MoveToLocation(NPC, 72.49, -4.30, 170.27, 2, "waypointsLoop")
end

function waypointsLoop(NPC)
	MovementLoopAddLocation(NPC, 60.48, -4, 189.65, 2, 0)
	MovementLoopAddLocation(NPC, 72.34, -4.3, 169.86, 2, 0)
	MovementLoopAddLocation(NPC, 67.34, -4.28, 154.56, 2, 0)
	MovementLoopAddLocation(NPC, 71.9, -4.3, 170.88, 2, 0)
end
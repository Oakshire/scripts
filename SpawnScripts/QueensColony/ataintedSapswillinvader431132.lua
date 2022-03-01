--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431132.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431132.lua
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
	MoveToLocation(NPC, 171.89, -3.14, 190.53, 2)
	MoveToLocation(NPC, 131.52, -3.48, 182.22, 2)
	MoveToLocation(NPC, 128.51, -3.71, 180.58, 2)
	MoveToLocation(NPC, 115.89, -3.8, 177.99, 2)
	MoveToLocation(NPC, 111.09, -3.8, 175.94, 2)
	MoveToLocation(NPC, 86.6, -4.55, 172.04, 2)
	MoveToLocation(NPC, 82.43, -4.49, 171.83, 2)
	MoveToLocation(NPC, 72.49, -4.30, 170.27, 2, "waypointsLoop")
end

function waypointsLoop(NPC)
	MovementLoopAddLocation(NPC, 60.48, -4, 189.65, 2, 0)
	MovementLoopAddLocation(NPC, 72.34, -4.3, 169.86, 2, 0)
	MovementLoopAddLocation(NPC, 67.34, -4.28, 154.56, 2, 0)
	MovementLoopAddLocation(NPC, 71.9, -4.3, 170.88, 2, 0)
end
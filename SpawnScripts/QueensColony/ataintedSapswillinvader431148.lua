--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431148.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431148.lua
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
	MoveToLocation(NPC, 157.4, -3.07, 194.98, 2)
	MoveToLocation(NPC, 152.08, -3.25, 192.88, 2)
	MoveToLocation(NPC, 147.79, -3.59, 192.49, 2)
	MoveToLocation(NPC, 132.41, -3.62, 185.18, 2)
	MoveToLocation(NPC, 127.15, -3.8, 184.92, 2)
	MoveToLocation(NPC, 123.55, -3.7, 182.71, 2)
	MoveToLocation(NPC, 118.82, -3.79, 178.85, 2)
	MoveToLocation(NPC, 78.56, -4.36, 157.78, 2)
	MoveToLocation(NPC, 75.75, -4.36, 160.57, 2, "waypointsLoop")
--	MoveToLocation(NPC, 73.31, -4.36, 164.62, 2)
--	MoveToLocation(NPC, 72.34, -4.3, 169.86, 2, "waypointsLoop")
end

function waypointsLoop(NPC)
	MovementLoopAddLocation(NPC, 60.48, -4, 189.65, 2, 0)
	MovementLoopAddLocation(NPC, 72.34, -4.3, 169.86, 2, 0)
	MovementLoopAddLocation(NPC, 67.34, -4.28, 154.56, 2, 0)
	MovementLoopAddLocation(NPC, 71.9, -4.3, 170.88, 2, 0)
end
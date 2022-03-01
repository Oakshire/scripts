--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431156.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431156.lua
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
	MoveToLocation(NPC, 162.27, -3.48, 203.26, 2)
	MoveToLocation(NPC, 135.07, -3.94, 188.94, 2)
	MoveToLocation(NPC, 130.84, -3.99, 187.48, 2)
	MoveToLocation(NPC, 122.64, -3.75, 182.35, 2)
	MoveToLocation(NPC, 118.54, -3.79, 178.68, 2)
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
--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431149.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431149.lua
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
	MoveToLocation(NPC, 157.4, -4.03, 207.16, 2)
	MoveToLocation(NPC, 146.83, -4.12, 201.76, 2)
	MoveToLocation(NPC, 111.93, -3.91, 179.46, 2)
	MoveToLocation(NPC, 107.54, -3.98, 178.63, 2)
	MoveToLocation(NPC, 92.66, -4.21, 167.77, 2)
	MoveToLocation(NPC, 87.22, -4.36, 162.22, 2)
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
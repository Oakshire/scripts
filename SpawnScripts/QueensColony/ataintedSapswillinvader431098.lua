--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431098.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431098.lua
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
	MoveToLocation(NPC, 182.23, -3.2, 145.21, 2)
	MoveToLocation(NPC, 163.38, -3.29, 148.42, 2)
	MoveToLocation(NPC, 160.88, -3.29, 149.17, 2)
	MoveToLocation(NPC, 147.61, -3.55, 150.83, 2)
	MoveToLocation(NPC, 144.62, -3.49, 151.85, 2)
	MoveToLocation(NPC, 120.85, -4.04, 154.08, 2)
	MoveToLocation(NPC, 115.91, -3.93, 155.97, 2)
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

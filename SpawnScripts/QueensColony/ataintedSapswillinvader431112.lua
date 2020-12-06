--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431112.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431112.lua
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
	MoveToLocation(NPC, 191.84, -3.29, 141.76, 2)
	MoveToLocation(NPC, 164.52, -3.41, 145.69, 2)
	MoveToLocation(NPC, 158.79, -2.76, 145.6, 2)
	MoveToLocation(NPC, 118.38, -4.18, 151.71, 2)
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

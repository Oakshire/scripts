--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427597.lua
	Script Purpose	:	Waypoint Path for aneedlefang427597.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:45:43 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -73.9, -13.04, 200.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -79.79, -12.57, 206.47, 2, 0)
	MovementLoopAddLocation(NPC, -82.48, -12.7, 208.29, 2, 0)
	MovementLoopAddLocation(NPC, -89.34, -13.69, 219.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -66.09, -12.09, 191.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -88.75, -12, 197.84, 2, 0)
	MovementLoopAddLocation(NPC, -98.27, -13.62, 201.78, 2, 0)
	MovementLoopAddLocation(NPC, -103.35, -13.83, 205.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -101.47, -13.97, 208.67, 2, 0)
	MovementLoopAddLocation(NPC, -96.96, -15.1, 235.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -88.74, -13.94, 232.25, 12, 0)
	MovementLoopAddLocation(NPC, -77.58, -13.13, 223.63, 2, 0)
	MovementLoopAddLocation(NPC, -73.92, -10.46, 220.92, 2, 0)
	MovementLoopAddLocation(NPC, -72.14, -10.5, 211.12, 2, 0)
	MovementLoopAddLocation(NPC, -48.64, -10.55, 185.74, 2, 0)
	MovementLoopAddLocation(NPC, -59.38, -11.55, 189.25, 2, 0)
	MovementLoopAddLocation(NPC, -63.77, -11.61, 191.04, 2, 0)
	MovementLoopAddLocation(NPC, -68.57, -12.11, 195.58, 2, 0)
	MovementLoopAddLocation(NPC, -71.86, -12.96, 197.77, 2, 0)
end


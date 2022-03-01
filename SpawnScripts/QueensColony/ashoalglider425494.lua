--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425494.lua
	Script Purpose	:	Waypoint Path for ashoalglider425494.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:18:06 
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
	MovementLoopAddLocation(NPC, 54.03, -11.47, -76.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.27, -10.63, -53.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.83, -10.7, -68.2, 2, 0)
	MovementLoopAddLocation(NPC, 39.24, -11.47, -85.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.67, -11.45, -66.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.56, -11.63, -77.02, 2, 0)
	MovementLoopAddLocation(NPC, 33.58, -11.49, -86.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.83, -11.64, -82.04, 2, 0)
	MovementLoopAddLocation(NPC, 52.77, -11.47, -74.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.5, -11.28, -79.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.58, -11.6, -74.92, 2, 0)
end



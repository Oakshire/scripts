--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427062.lua
	Script Purpose	:	Waypoint Path for areefturtle427062.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:16:31 
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
	MovementLoopAddLocation(NPC, 33.09, -11.75, -84.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.22, -11.52, -77.83, 2, 0)
	MovementLoopAddLocation(NPC, 46.56, -11.13, -68.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.67, -11.73, -75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.45, -11.68, -63.35, 2, 0)
	MovementLoopAddLocation(NPC, 67.69, -10.2, -43.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.2, -11.16, -43.92, 2, 0)
	MovementLoopAddLocation(NPC, 85.21, -11.72, -43.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.64, -12.07, -45.19, 2, 0)
	MovementLoopAddLocation(NPC, 68.72, -11.75, -49.7, 2, 0)
	MovementLoopAddLocation(NPC, 62.4, -11.24, -53.32, 2, 0)
	MovementLoopAddLocation(NPC, 48.15, -10.68, -58.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.29, -11.85, -71.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.63, -11.96, -78.02, 2, 0)
	MovementLoopAddLocation(NPC, 33.18, -11.87, -79.72, 2, 0)
	MovementLoopAddLocation(NPC, 28.95, -11.86, -79.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.81, -11.77, -86.78, 2, math.random(10, 20))
end



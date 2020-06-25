--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427069.lua
	Script Purpose	:	Waypoint Path for areefturtle427069.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:19:10 
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
	MovementLoopAddLocation(NPC, 63.74, -11.73, -72.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.29, -11.79, -58.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.8, -11.55, -59, 2, 0)
	MovementLoopAddLocation(NPC, 51.99, -11.01, -61.18, 2, 0)
	MovementLoopAddLocation(NPC, 47.71, -10.46, -61.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.81, -11.14, -52.94, 2, 0)
	MovementLoopAddLocation(NPC, 77.93, -11.88, -46.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 91.98, -12.79, -25.32, 2, 0)
	MovementLoopAddLocation(NPC, 96.04, -12.83, -17.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.77, -11.91, -31.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.6, -11.89, -34.02, 2, 0)
	MovementLoopAddLocation(NPC, 78, -11.66, -36.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.62, -12.03, -44.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.6, -11.38, -47.74, 2, 0)
	MovementLoopAddLocation(NPC, 74.17, -11.35, -51.52, 2, 0)
	MovementLoopAddLocation(NPC, 71.44, -11.51, -58.72, 2, 0)
end



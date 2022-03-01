--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427105.lua
	Script Purpose	:	Waypoint Path for areefturtle427105.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:22:28 
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
	MovementLoopAddLocation(NPC, 10.91, -10.66, 74.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.91, -13.31, 27.36, 2, 0)
	MovementLoopAddLocation(NPC, 27.84, -13.87, 19.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.89, -12.19, 30.29, 2, 0)
	MovementLoopAddLocation(NPC, 20.79, -11.85, 44.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.97, -12.17, 29.67, 2, 0)
	MovementLoopAddLocation(NPC, 35.53, -13.42, 20.5, 2, 0)
	MovementLoopAddLocation(NPC, 38.58, -13.63, 15.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18, -13.08, 35.85, 2, 0)
	MovementLoopAddLocation(NPC, 12.89, -13.35, 43.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.15, -12.13, 25.19, 2, 0)
	MovementLoopAddLocation(NPC, 24.98, -12.31, 16.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.52, -13.7, 27.15, 2, 0)
	MovementLoopAddLocation(NPC, 31.23, -13.63, 31.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.72, -13.59, 33.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.41, -13.21, 33.73, 2, 0)
	MovementLoopAddLocation(NPC, 6.42, -13.35, 34.37, 2, 0)
	MovementLoopAddLocation(NPC, -12.91, -13.52, 41.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.49, -12.44, 44.88, 2, 0)
	MovementLoopAddLocation(NPC, 19.97, -11.37, 62.41, 2, 0)
	MovementLoopAddLocation(NPC, 35.01, -10.79, 71.48, 2, 0)
	MovementLoopAddLocation(NPC, 38.91, -10.67, 73.63, 2, math.random(10, 20))
end



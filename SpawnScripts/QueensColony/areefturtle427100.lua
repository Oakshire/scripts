--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427100.lua
	Script Purpose	:	Waypoint Path for areefturtle427100.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:20:39 
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
	MovementLoopAddLocation(NPC, 62.88, -11.72, 68.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.71, -11.34, 64.67, 2, 0)
	MovementLoopAddLocation(NPC, 41.47, -11.27, 47.2, 2, 0)
	MovementLoopAddLocation(NPC, 37.84, -12.16, 43.74, 2, 0)
	MovementLoopAddLocation(NPC, 34.68, -12.76, 37.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.28, -12.84, 35.46, 2, 0)
	MovementLoopAddLocation(NPC, 28.69, -12.8, 33.01, 2, 0)
	MovementLoopAddLocation(NPC, 22.57, -12.26, 24.7, 2, 0)
	MovementLoopAddLocation(NPC, 19.1, -12.44, 22.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.03, -12.25, 31.27, 2, 0)
	MovementLoopAddLocation(NPC, 21.46, -12.28, 48.2, 2, 0)
	MovementLoopAddLocation(NPC, 19.4, -12.58, 56.11, 2, 0)
	MovementLoopAddLocation(NPC, 18.92, -12.19, 64.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.58, -11.63, 71.19, 2, 0)
	MovementLoopAddLocation(NPC, 34.75, -11.68, 73.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.24, -11.66, 64.94, 2, 0)
	MovementLoopAddLocation(NPC, 15.9, -11.69, 40.63, 2, 0)
	MovementLoopAddLocation(NPC, 11.76, -11.84, 35.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.86, -13.11, 38.62, 2, 0)
	MovementLoopAddLocation(NPC, 0.72, -13.43, 39.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.34, -13.95, 34.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.81, -13.55, 34.63, 2, 0)
	MovementLoopAddLocation(NPC, -12.31, -11.91, 31.9, 2, 0)
	MovementLoopAddLocation(NPC, -21.17, -11.75, 31.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.98, -11.75, 56.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.16, -11.82, 60.81, 2, 0)
	MovementLoopAddLocation(NPC, 58.05, -11.79, 64.08, 2, 0)
end



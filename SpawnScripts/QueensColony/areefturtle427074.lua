--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427074.lua
	Script Purpose	:	Waypoint Path for areefturtle427074.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:32:20 
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
	MovementLoopAddLocation(NPC, 25.52, -12.72, 6.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.72, -12.89, 3.08, 2, 0)
	MovementLoopAddLocation(NPC, 37.42, -12.73, -12.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.61, -11.84, -12.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.31, -12.18, -23.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.98, -12.47, -34.14, 2, 0)
	MovementLoopAddLocation(NPC, 22.21, -11.75, -40.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.81, -12.26, -12.12, 2, 0)
	MovementLoopAddLocation(NPC, 28.36, -11.77, -6.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.35, -12.25, -11.84, 2, 0)
	MovementLoopAddLocation(NPC, 62.27, -13.89, -12.98, 2, 0)
	MovementLoopAddLocation(NPC, 65.52, -14.73, -14.83, 2, 0)
	MovementLoopAddLocation(NPC, 65.45, -14.73, -14.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.54, -13.17, -15.29, 2, 0)
	MovementLoopAddLocation(NPC, 52.93, -12.89, -19.5, 2, 0)
	MovementLoopAddLocation(NPC, 40.93, -13.21, -25.5, 2, 0)
	MovementLoopAddLocation(NPC, 37.19, -13.05, -26.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.64, -12.95, -28.44, 2, 0)
	MovementLoopAddLocation(NPC, 33.21, -12.85, -30.84, 2, 0)
	MovementLoopAddLocation(NPC, 27.57, -12.65, -34.34, 2, 0)
	MovementLoopAddLocation(NPC, 23.79, -12.55, -36.15, 2, 0)
	MovementLoopAddLocation(NPC, 15.96, -11.81, -42.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.62, -12.35, -39.34, 2, 0)
	MovementLoopAddLocation(NPC, 24.23, -12.39, -25.83, 2, 0)
	MovementLoopAddLocation(NPC, 31.81, -12.27, -8.44, 2, 0)
	MovementLoopAddLocation(NPC, 37.1, -11.86, -1.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.69, -12.18, -0.88, 2, 0)
	MovementLoopAddLocation(NPC, 32.66, -12.42, 0.35, 2, 0)
end

--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427079.lua
	Script Purpose	:	Waypoint Path for areefturtle427079.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:37:10 
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
	MovementLoopAddLocation(NPC, 28.3099, -11.83, 9.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.32, -13.22, 1.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.45, -12.88, 8.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.21, -13.02, -12.25, 2, 0)
	MovementLoopAddLocation(NPC, 37.39, -13.21, -28.78, 2, 0)
	MovementLoopAddLocation(NPC, 39.43, -12.39, -34.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.07, -12.05, -39.23, 2, 0)
	MovementLoopAddLocation(NPC, 22.18, -12.06, -41.18, 2, 0)
	MovementLoopAddLocation(NPC, 17.24, -12.01, -44.46, 2, 0)
	MovementLoopAddLocation(NPC, 13.95, -12, -50.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.14, -11.81, -27.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.35, -12.04, -19.56, 2, 0)
	MovementLoopAddLocation(NPC, 15.25, -12.21, -11.08, 2, 0)
	MovementLoopAddLocation(NPC, 18.16, -12.51, 2.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.87, -14.03, -17.68, 2, 0)
	MovementLoopAddLocation(NPC, 26.34, -14.18, -22.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.35, -14.08, -17.92, 2, 0)
	MovementLoopAddLocation(NPC, 43.69, -13.42, -13.4, 2, 0)
	MovementLoopAddLocation(NPC, 49.28, -13.41, -12.56, 2, 0)
	MovementLoopAddLocation(NPC, 56.03, -14, -11.24, 2, 0)
	MovementLoopAddLocation(NPC, 64.11, -14.92, -8.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.97, -13.66, -3.6, 2, 0)
end


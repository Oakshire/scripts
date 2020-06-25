--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427081.lua
	Script Purpose	:	Waypoint Path for areefturtle427081.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:40:21 
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
	MovementLoopAddLocation(NPC, 13.06, -11.7, -45.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.3, -12.23, -40.95, 2, 0)
	MovementLoopAddLocation(NPC, 16.6, -12.73, -36.85, 2, 0)
	MovementLoopAddLocation(NPC, 27.17, -15.03, -23.41, 2, 0)
	MovementLoopAddLocation(NPC, 30.98, -14.89, -19.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.55, -13.97, -26.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.2, -13.65, -29.58, 2, 0)
	MovementLoopAddLocation(NPC, 27.66, -11.93, -40.11, 2, 0)
	MovementLoopAddLocation(NPC, 23.86, -11.4, -46.36, 2, 0)
	MovementLoopAddLocation(NPC, 17.93, -11.74, -54.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.5, -10.15, -47.42, 2, 0)
	MovementLoopAddLocation(NPC, 19.99, -11.63, -36.55, 2, 0)
	MovementLoopAddLocation(NPC, 21.69, -11.72, -32.57, 2, 0)
	MovementLoopAddLocation(NPC, 26, -11.94, -29.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.21, -13.78, -10.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.4, -13.78, -11.47, 2, 0)
	MovementLoopAddLocation(NPC, 21.46, -12.83, -16.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.78, -14.3, -16.35, 2, 0)
	MovementLoopAddLocation(NPC, 39.59, -13.75, -16.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.32, -13.69, -19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.83, -13.26, -23.97, 2, 0)
	MovementLoopAddLocation(NPC, 17.79, -12.21, -38.13, 2, 0)
end



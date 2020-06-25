--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427072.lua
	Script Purpose	:	Waypoint Path for areefturtle427072.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:31:37 
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
	MovementLoopAddLocation(NPC, 28.35, -11.69, -9.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.7, -11.78, -3.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.98, -12.27, -18.27, 2, 0)
	MovementLoopAddLocation(NPC, 46.88, -11.84, -25.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.73, -12.64, -20.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.47, -12.97, -19.58, 2, 0)
	MovementLoopAddLocation(NPC, 44.18, -12.97, -17.3, 2, 0)
	MovementLoopAddLocation(NPC, 22.3, -13.71, 1.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.48, -13.72, -12.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.47, -13.21, -20.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.01, -13.78, -15, 2, 0)
	MovementLoopAddLocation(NPC, 43.64, -13.75, -1.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.9, -14.26, -16.09, 2, 0)
	MovementLoopAddLocation(NPC, 19.18, -13.76, -31.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.2, -14.21, -24.66, 2, 0)
	MovementLoopAddLocation(NPC, 34.55, -14.73, -12.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.57, -12.98, -7.83, 2, 0)
	MovementLoopAddLocation(NPC, 33.36, -12.16, -0.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.02, -12.3, -15.04, 2, 0)
	MovementLoopAddLocation(NPC, 19.4, -12.88, -17.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.22, -12.67, -14.7, 2, 0)
	MovementLoopAddLocation(NPC, 25.31, -12.21, -11.43, 2, 0)
end



--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427241.lua
	Script Purpose	:	Waypoint Path for areefturtle427241.lua
	Script Author	:	Rylec
	Script Date	:	10-22-2019 09:51:39 
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
	MovementLoopAddLocation(NPC, 21.89, -12.54, 255.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.53, -11.82, 261.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.83, -13.04, 280.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.52, -10.74, 267.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.9, -14.61, 276.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.89, -13.68, 272.71, 2, 0)
	MovementLoopAddLocation(NPC, 27.93, -13.13, 271.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.29, -14.36, 273.95, 2, 0)
	MovementLoopAddLocation(NPC, 14.64, -14.47, 274.91, 2, 0)
	MovementLoopAddLocation(NPC, 7.05, -14.5, 282.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.96, -12.1, 269.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.25, -11.53, 256.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.83, -12.11, 264.7, 2, math.random(10, 20))
end


--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427573.lua
	Script Purpose	:	Waypoint Path for aneedlefang427573.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:46:19 
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
	MovementLoopAddLocation(NPC, -96.68, -12.32, 208.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.22, -14.86, 238.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.56, -11.89, 238.74, 2, 0)
	MovementLoopAddLocation(NPC, -109.24, -12.01, 238.84, 2, 0)
	MovementLoopAddLocation(NPC, -127.37, -13.24, 231.18, 2, 0)
	MovementLoopAddLocation(NPC, -132.23, -13.75, 225.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -116.89, -13.79, 231.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.92, -13.02, 227.61, 2, 0)
	MovementLoopAddLocation(NPC, -139.93, -12.41, 223.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.38, -14.16, 200.47, 2, 0)
	MovementLoopAddLocation(NPC, -109.01, -14.96, 197.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -106.08, -13.54, 197, 2, 0)
	MovementLoopAddLocation(NPC, -97.66, -12.6, 192.91, 2, 0)
	MovementLoopAddLocation(NPC, -83.86, -12.1, 187.82, 2, 0)
	MovementLoopAddLocation(NPC, -76.22, -12.12, 182.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -82.14, -11.07, 186.78, 2, 0)
	MovementLoopAddLocation(NPC, -94.27, -11.14, 192.13, 2, 0)
	MovementLoopAddLocation(NPC, -101.4, -12.4, 196.43, 2, 0)
end


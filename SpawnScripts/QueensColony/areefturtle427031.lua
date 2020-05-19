--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427031.lua
	Script Purpose	:	Waypoint Path for areefturtle427031.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:44 
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
	MovementLoopAddLocation(NPC, -142.5, -12.44, 62.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.8, -11.55, 29.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.85, -11.53, 37.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.82, -11.94, 49.37, 2, 0)
	MovementLoopAddLocation(NPC, -134.16, -11.83, 55.19, 2, 0)
	MovementLoopAddLocation(NPC, -131.53, -11.58, 64.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.13, -11.84, 55.64, 2, 0)
	MovementLoopAddLocation(NPC, -142.95, -13.23, 48.68, 2, 0)
	MovementLoopAddLocation(NPC, -143.93, -13.74, 70.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.6, -13.25, 48.53, 2, 0)
	MovementLoopAddLocation(NPC, -138.03, -12.64, 46.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.54, -12.28, 52.02, 2, 0)
	MovementLoopAddLocation(NPC, -105.41, -11.82, 58.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.03, -10.31, 54.07, 2, 0)
	MovementLoopAddLocation(NPC, -125.64, -10.97, 53.66, 2, 0)
	MovementLoopAddLocation(NPC, -128.72, -11.72, 56.47, 2, 0)
	MovementLoopAddLocation(NPC, -128.55, -11.71, 61.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.4, -12.29, 55.96, 2, 0)
	MovementLoopAddLocation(NPC, -133.12, -12.72, 66.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.9, -12.83, 57.28, 2, 0)
	MovementLoopAddLocation(NPC, -142.83, -12.94, 51.71, 2, 0)
	MovementLoopAddLocation(NPC, -144.55, -13.06, 51.74, 2, 0)
	MovementLoopAddLocation(NPC, -147.29, -12.9, 54.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.72, -13.44, 49.96, 2, 0)
	MovementLoopAddLocation(NPC, -140.76, -13.95, 49.26, 2, 0)
	MovementLoopAddLocation(NPC, -136.18, -13.39, 55.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.83, -12.04, 57.3, 2, 0)
	MovementLoopAddLocation(NPC, -129.83, -11.76, 62.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.51, -12.07, 56.42, 2, 0)
	MovementLoopAddLocation(NPC, -136.73, -12.49, 56.69, 2, 0)
end

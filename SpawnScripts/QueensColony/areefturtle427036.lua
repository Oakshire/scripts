--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427036.lua
	Script Purpose	:	Waypoint Path for areefturtle427036.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 09:00:43 
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
	MovementLoopAddLocation(NPC, -110.69, -10.3, 73.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -118.86, -10.3, 60.02, 2, 0)
	MovementLoopAddLocation(NPC, -123.46, -10.48, 40.06, 2, 0)
	MovementLoopAddLocation(NPC, -131.47, -11.77, 21.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.94, -11.38, 27.92, 2, 0)
	MovementLoopAddLocation(NPC, -135.38, -12.32, 30.92, 2, 0)
	MovementLoopAddLocation(NPC, -131.04, -12.39, 33.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.84, -13.16, 47.8, 2, 0)
	MovementLoopAddLocation(NPC, -145.99, -13.38, 52.99, 2, 0)
	MovementLoopAddLocation(NPC, -151.07, -14.74, 70.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -149.26, -13.62, 53.69, 2, 0)
	MovementLoopAddLocation(NPC, -137.98, -12.81, 48.2, 2, 0)
	MovementLoopAddLocation(NPC, -133.14, -11.98, 39.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.55, -11.63, 65.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.71, -11.8, 56.2, 2, 0)
	MovementLoopAddLocation(NPC, -142.53, -12.73, 51.48, 2, 0)
	MovementLoopAddLocation(NPC, -148.65, -13.47, 47.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.73, -12.62, 43.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.24, -12.73, 17.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.57, -13.26, 7.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.95, -13.75, 15.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.89, -13.76, 53.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.28, -12.01, 52.35, 2, 0)
	MovementLoopAddLocation(NPC, -128.21, -10.38, 57.81, 2, 0)
end


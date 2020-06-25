--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425748.lua
	Script Purpose	:	Waypoint Path for atriggerfish425748.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:14:34 
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
	MovementLoopAddLocation(NPC, -139.25, -11.82, 112.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.56, -11.99, 105, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.01, -11.47, 110.51, 2, 0)
	MovementLoopAddLocation(NPC, -134.69, -10.46, 115.62, 2, 0)
	MovementLoopAddLocation(NPC, -147.16, -10.75, 115.5, 2, 0)
	MovementLoopAddLocation(NPC, -149.33, -13.91, 109.49, 2, 0)
	MovementLoopAddLocation(NPC, -144.7, -14, 112.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.01, -14.06, 127.4, 2, 0)
	MovementLoopAddLocation(NPC, -142.65, -12.14, 127.47, 2, 0)
	MovementLoopAddLocation(NPC, -135.76, -11.89, 127.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.02, -12.91, 97.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.11, -12.54, 108.07, 2, 0)
	MovementLoopAddLocation(NPC, -139.01, -12.48, 128.24, 2, 0)
	MovementLoopAddLocation(NPC, -141.84, -13.71, 131.42, 2, 0)
	MovementLoopAddLocation(NPC, -144.87, -13.97, 134.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.79, -13.63, 139.94, 2, 0)
	MovementLoopAddLocation(NPC, -135.13, -13, 144.42, 2, 0)
	MovementLoopAddLocation(NPC, -130.12, -12, 150.66, 2, 0)
	MovementLoopAddLocation(NPC, -125.03, -12.04, 157.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.5, -14.56, 162.35, 2, 0)
	MovementLoopAddLocation(NPC, -142.94, -14.93, 168.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.1, -13.14, 163.83, 2, 0)
	MovementLoopAddLocation(NPC, -131.22, -13.03, 157.05, 2, 0)
	MovementLoopAddLocation(NPC, -126.87, -12.42, 149.96, 2, 0)
	MovementLoopAddLocation(NPC, -123.09, -12.02, 145.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.31, -11.96, 134.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.7, -11.5, 134.65, 2, 0)
end

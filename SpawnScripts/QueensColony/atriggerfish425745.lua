--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425745.lua
	Script Purpose	:	Waypoint Path for atriggerfish425745.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:08:13 
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
	MovementLoopAddLocation(NPC, -128.58, -12.97, 164.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.45, -12.71, 197.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.11, -13.48, 183.54, 2, 0)
	MovementLoopAddLocation(NPC, -128.6, -14.01, 182.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.18, -14.39, 167.34, 2, 0)
	MovementLoopAddLocation(NPC, -143.87, -14.46, 157, 2, 0)
	MovementLoopAddLocation(NPC, -146.57, -14.99, 153.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.86, -13.88, 186.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.73, -14.51, 161.39, 2, 0)
	MovementLoopAddLocation(NPC, -141.27, -12.7, 153.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.06, -13.41, 150.2, 2, 0)
	MovementLoopAddLocation(NPC, -148.42, -13.82, 138.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -141.9, -13.52, 128.21, 2, 0)
	MovementLoopAddLocation(NPC, -135.32, -13.44, 127.96, 2, 0)
	MovementLoopAddLocation(NPC, -133.99, -12.96, 127.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.19, -13.05, 132.46, 2, 0)
	MovementLoopAddLocation(NPC, -136.03, -13.3, 128.32, 2, 0)
	MovementLoopAddLocation(NPC, -141.24, -13.03, 123.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140, -12.52, 131.48, 2, 0)
	MovementLoopAddLocation(NPC, -139.43, -11.81, 112.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.33, -11.82, 131.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.08, -12.41, 151.46, 2, 0)
	MovementLoopAddLocation(NPC, -130.64, -12.54, 158.02, 2, 0)
end



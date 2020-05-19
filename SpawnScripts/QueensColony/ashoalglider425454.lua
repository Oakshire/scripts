--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425454.lua
	Script Purpose	:	Waypoint Path for ashoalglider425454.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:18:36 
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
	MovementLoopAddLocation(NPC, -148.39, -13.25, 168.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.98, -13.04, 157.98, 2, 0)
	MovementLoopAddLocation(NPC, -134.09, -12.22, 144.73, 2, 0)
	MovementLoopAddLocation(NPC, -126.85, -11.52, 134.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.54, -11.89, 139.27, 2, 0)
	MovementLoopAddLocation(NPC, -135.4, -12.06, 140.3, 2, 0)
	MovementLoopAddLocation(NPC, -144.26, -12.51, 146.24, 2, 0)
	MovementLoopAddLocation(NPC, -145.41, -12.02, 147.47, 2, 0)
	MovementLoopAddLocation(NPC, -146.66, -12.16, 150.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.06, -13.64, 163.54, 2, 0)
	MovementLoopAddLocation(NPC, -146.27, -14.44, 175.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.93, -14.83, 181.97, 2, 0)
	MovementLoopAddLocation(NPC, -126.84, -14.5, 190.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -122.7, -13.37, 194.42, 2, 0)
	MovementLoopAddLocation(NPC, -119.53, -13.25, 197.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.5, -14.47, 220.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -141.33, -11.91, 205.64, 2, 0)
	MovementLoopAddLocation(NPC, -135.52, -12.05, 197.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.93, -12.14, 182.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.24, -12.45, 169.43, 2, 0)
	MovementLoopAddLocation(NPC, -139.49, -12.41, 164.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.98, -13.23, 167.35, 2, 0)
end


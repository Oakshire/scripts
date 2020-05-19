--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425746.lua
	Script Purpose	:	Waypoint Path for atriggerfish425746.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:13:30 
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
	MovementLoopAddLocation(NPC, -141.22, -14.94, 182.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.39, -12.61, 146.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.55, -13.58, 151.67, 2, 0)
	MovementLoopAddLocation(NPC, -143.3, -13.64, 152.11, 2, 0)
	MovementLoopAddLocation(NPC, -140.3, -13.66, 156.12, 2, 0)
	MovementLoopAddLocation(NPC, -137.28, -13.25, 158.86, 2, 0)
	MovementLoopAddLocation(NPC, -137.42, -12.49, 160.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.56, -12.78, 175.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -116.85, -12.44, 167.7, 2, 0)
	MovementLoopAddLocation(NPC, -115.9, -11.86, 164.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -118.04, -13.42, 181.2, 2, 0)
	MovementLoopAddLocation(NPC, -117.99, -14.21, 184.62, 2, 0)
	MovementLoopAddLocation(NPC, -117.79, -12.67, 186.52, 2, 0)
	MovementLoopAddLocation(NPC, -118.69, -12.54, 190.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.75, -12.14, 160.79, 2, 0)
	MovementLoopAddLocation(NPC, -130.27, -12.47, 156.69, 2, 0)
	MovementLoopAddLocation(NPC, -130.75, -12.63, 155.09, 2, 0)
	MovementLoopAddLocation(NPC, -131.99, -13.03, 153.85, 2, 0)
	MovementLoopAddLocation(NPC, -133.8, -13.02, 147.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.36, -11.79, 123.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.81, -12.15, 125.78, 2, 0)
	MovementLoopAddLocation(NPC, -143, -14.01, 127.37, 2, 0)
	MovementLoopAddLocation(NPC, -146.91, -14.18, 132.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.45, -12.65, 142.36, 2, 0)
	MovementLoopAddLocation(NPC, -145.99, -12.98, 151.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.25, -14.82, 164, 2, 0)
	MovementLoopAddLocation(NPC, -148.51, -15.01, 168.36, 2, math.random(10, 20))
end

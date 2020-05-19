--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425751.lua
	Script Purpose	:	Waypoint Path for atriggerfish425751.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:16:04 
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
	MovementLoopAddLocation(NPC, -116.08, -12.03, 164.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.3, -12.68, 172.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.75, -13.49, 182.1, 2, 0)
	MovementLoopAddLocation(NPC, -120.85, -14.68, 187.56, 2, 0)
	MovementLoopAddLocation(NPC, -115.93, -15, 190.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.07, -14.94, 183.93, 2, 0)
	MovementLoopAddLocation(NPC, -141.39, -13.55, 182.03, 2, 0)
	MovementLoopAddLocation(NPC, -144.2, -12.75, 180.6, 2, 0)
	MovementLoopAddLocation(NPC, -146.63, -12.59, 178.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.88, -14.54, 152.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.59, -12.57, 183.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.83, -12.7, 172.91, 2, 0)
	MovementLoopAddLocation(NPC, -108.77, -11.97, 164.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -115.16, -12.48, 172.18, 2, 0)
	MovementLoopAddLocation(NPC, -117.44, -13.61, 179.2, 2, 0)
	MovementLoopAddLocation(NPC, -119.63, -13.78, 183.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.85, -14.03, 166.76, 2, 0)
	MovementLoopAddLocation(NPC, -143.01, -13.77, 157.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.87, -13.45, 164.05, 2, 0)
	MovementLoopAddLocation(NPC, -130.31, -13.45, 164.67, 2, 0)
	MovementLoopAddLocation(NPC, -125.51, -11.99, 168.12, 2, 0)
	MovementLoopAddLocation(NPC, -119.32, -11.92, 172, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -115.42, -12.92, 179.75, 2, 0)
	MovementLoopAddLocation(NPC, -114.37, -12.68, 194.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.88, -14.86, 184.16, 2, 0)
	MovementLoopAddLocation(NPC, -133.94, -15, 183, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.47, -13.52, 174.46, 2, 0)
	MovementLoopAddLocation(NPC, -120.6, -12.55, 168.78, 2, 0)
end


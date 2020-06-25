--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430813.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430813.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:41:32 
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
	MovementLoopAddLocation(NPC, 10.18, -10.8, 236.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.22, -8.62, 238.92, 2, 0)
	MovementLoopAddLocation(NPC, 4.85, -8.77, 242.62, 2, 0)
	MovementLoopAddLocation(NPC, 6.18, -9.13, 243.6, 2, 0)
	MovementLoopAddLocation(NPC, 8.10, -8.37, 247.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.83, -12.29, 242.26, 2, 0)
	MovementLoopAddLocation(NPC, 11.77, -13.09, 241.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.47, -11.01, 240.37, 2, 0)
	MovementLoopAddLocation(NPC, 8.79, -10.40, 239.11, 2, 0)
	MovementLoopAddLocation(NPC, 10.32, -10.21, 233.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.03, -9.76, 234.00, 2, 0)
	MovementLoopAddLocation(NPC, 7.85, -8.93, 234.12, 2, 0)
	MovementLoopAddLocation(NPC, -6.59, -7.48, 240.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.34, -10.03, 234.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.02, -7.79, 243.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.72, -8.70, 241.19, 2, 0)
	MovementLoopAddLocation(NPC, 7.60, -9.81, 238.89, 2, 0)
	MovementLoopAddLocation(NPC, 12.00, -12.49, 238.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.18, -10.60, 239.09, 2, 0)
	MovementLoopAddLocation(NPC, 8.44, -10.27, 239.15, 2, 0)
	MovementLoopAddLocation(NPC, 7.06, -10.11, 241.38, 2, 0)
	MovementLoopAddLocation(NPC, 6.57, -8.74, 244.49, 2, 0)
	MovementLoopAddLocation(NPC, 6.26, -9.30, 254.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.66, -10.84, 247.89, 2, 0)
	MovementLoopAddLocation(NPC, 12.22, -13.09, 247.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.28, -13.37, 253.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.40, -9.54, 253.14, 2, 0)
	MovementLoopAddLocation(NPC, 6.63, -8.55, 250.57, 2, 0)
	MovementLoopAddLocation(NPC, 5.96, -8.97, 239.94, 2, 0)
	MovementLoopAddLocation(NPC, 7.41, -9.64, 238.93, 2, 0)
	MovementLoopAddLocation(NPC, 6.93, -8.71, 237.81, 2, 0)
end

--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430815.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430815.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:41:42 
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
	MovementLoopAddLocation(NPC, 4.28, -8.60, 240.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.81, -9.43, 253.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.74, -8.64, 247.62, 2, 0)
	MovementLoopAddLocation(NPC, 2.44, -8.22, 244.80, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.66, -7.66, 245.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.99, -8.83, 239.63, 2, 0)
	MovementLoopAddLocation(NPC, 6.65, -8.66, 238.29, 2, 0)
	MovementLoopAddLocation(NPC, 10.96, -10.43, 236.43, 2, 0)
	MovementLoopAddLocation(NPC, 8.22, -9.70, 237.00, 2, 0)
	MovementLoopAddLocation(NPC, 5.41, -8.13, 238.13, 2, 0)
	MovementLoopAddLocation(NPC, 4.09, -7.98, 238.17, 2, 0)
	MovementLoopAddLocation(NPC, 6.05, -8.67, 244.97, 2, 0)
	MovementLoopAddLocation(NPC, 7.18, -8.30, 247.93, 2, 0)
	MovementLoopAddLocation(NPC, 7.17, -9.38, 254.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.35, -8.48, 249.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.41, -8.53, 248.29, 2, 0)
	MovementLoopAddLocation(NPC, 1.99, -8.07, 243.65, 2, 0)
	MovementLoopAddLocation(NPC, 0.49, -7.94, 240.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.03, -7.57, 239.80, 2, 0)
	MovementLoopAddLocation(NPC, -8.63, -6.70, 238.70, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.11, -7.78, 243.68, 2, 0)
	MovementLoopAddLocation(NPC, 5.33, -8.93, 252.90, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.67, -9.21, 242.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.69, -8.74, 242.51, 2, 0)
end


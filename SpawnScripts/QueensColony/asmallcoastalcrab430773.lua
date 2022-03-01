--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430773.lua
	Script Purpose	:	Waypoint Path for smallcrab002_06.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:42:04 
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
	MovementLoopAddLocation(NPC, -35.02, -7.99, 228.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.26, -8.00, 231.61, 2, 0)
	MovementLoopAddLocation(NPC, -19.97, -8.57, 254.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.92, -8.14, 248.08, 2, 0)
	MovementLoopAddLocation(NPC, -27.84, -8.02, 244.58, 2, 0)
	MovementLoopAddLocation(NPC, -30.10, -8.36, 243.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.20, -8.21, 239.49, 2, 0)
	MovementLoopAddLocation(NPC, -32.19, -8.07, 236.14, 2, 0)
	MovementLoopAddLocation(NPC, -34.14, -7.95, 225.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.13, -8.29, 233.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.52, -8.86, 244.51, 2, 0)
	MovementLoopAddLocation(NPC, -30.55, -9.13, 247.09, 2, 0)
	MovementLoopAddLocation(NPC, -27.84, -9.22, 250.48, 2, 0)
	MovementLoopAddLocation(NPC, -27.46, -9.97, 254.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.69, -8.98, 247.46, 2, 0)
	MovementLoopAddLocation(NPC, -36.00, -8.80, 238.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.88, -9.25, 238.78, 2, math.random(10, 20))
end



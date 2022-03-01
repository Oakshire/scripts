--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430774.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430774.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:42:06 
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
	MovementLoopAddLocation(NPC, -25.34, -9.33, 254.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.82, -8.67, 251.72, 2, 0)
	MovementLoopAddLocation(NPC, -32.26, -8.95, 244.01, 2, 0)
	MovementLoopAddLocation(NPC, -41.14, -9.48, 237.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.01, -9.05, 243.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.14, -7.92, 237.34, 2, 0)
	MovementLoopAddLocation(NPC, -19.83, -7.82, 236.45, 2, 0)
	MovementLoopAddLocation(NPC, -16.57, -7.84, 239.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.14, -7.85, 239.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.29, -7.89, 239.11, 2, 0)
	MovementLoopAddLocation(NPC, -36.96, -8.01, 224.80, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.15, -8.94, 252.59, 2, 0)
	MovementLoopAddLocation(NPC, -23.25, -9.18, 255.15, 2, 0)
	MovementLoopAddLocation(NPC, -22.40, -9.60, 256.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.61, -8.55, 247.96, 2, 0)
	MovementLoopAddLocation(NPC, -30.29, -8.62, 244.98, 2, 0)
	MovementLoopAddLocation(NPC, -33.81, -8.46, 238.07, 2, 0)
	MovementLoopAddLocation(NPC, -39.57, -8.05, 229.82, 2, 0)
	MovementLoopAddLocation(NPC, -40.08, -8.02, 227.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.70, -7.95, 233.56, 2, 0)
	MovementLoopAddLocation(NPC, -26.54, -7.95, 235.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.03, -9.41, 233.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.18, -9.20, 235.18, 2, 0)
	MovementLoopAddLocation(NPC, -32.70, -9.33, 245.56, 2, 0)
	MovementLoopAddLocation(NPC, -25.65, -9.02, 252.43, 2, 0)
end


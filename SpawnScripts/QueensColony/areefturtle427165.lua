--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427165.lua
	Script Purpose	:	Waypoint Path for areefturtle427165.lua
	Script Author	:	Rylec
	Script Date	:	10-23-2019 07:03:17 
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
	MovementLoopAddLocation(NPC, -26.88, -11.71, 270.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.7, -12.33, 270.58, 2, 0)
	MovementLoopAddLocation(NPC, -52.21, -12.02, 266.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -54.11, -13.32, 260.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.96, -13.2, 261.29, 2, 0)
	MovementLoopAddLocation(NPC, -36.29, -12.72, 261.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -54.31, -13.72, 250.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.09, -13.65, 252.18, 2, 0)
	MovementLoopAddLocation(NPC, -51.29, -13.66, 254.8, 2, 0)
	MovementLoopAddLocation(NPC, -49.12, -13.61, 256.46, 2, 0)
	MovementLoopAddLocation(NPC, -46.35, -14.27, 264.22, 2, 0)
	MovementLoopAddLocation(NPC, -43.54, -12.5, 268.40, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.53, -12, 272.39, 2, 0)
end


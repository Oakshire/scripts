--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430744.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430744.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:42:18 
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
	MovementLoopAddLocation(NPC, -56.43, -7.93, 212.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.07, -4.89, 209.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -51.05, -8.14, 213.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.40, -9.22, 207.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.23, -8.45, 209.26, 2, 0)
	MovementLoopAddLocation(NPC, -50.49, -8.22, 215.42, 2, 0)
	MovementLoopAddLocation(NPC, -50.04, -8.32, 216.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.88, -8.31, 216.50, 2, 0)
	MovementLoopAddLocation(NPC, -54.20, -7.88, 211.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.66, -8.82, 206.11, 2, 0)
	MovementLoopAddLocation(NPC, -46.63, -8.89, 202.35, 2, 0)
	MovementLoopAddLocation(NPC, -44.78, -10.91, 199.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.96, -8.94, 201.97, 2, 0)
	MovementLoopAddLocation(NPC, -48.77, -9.41, 204.07, 2, 0)
	MovementLoopAddLocation(NPC, -53.80, -9.08, 205.33, 2, 0)
	MovementLoopAddLocation(NPC, -55.52, -9.23, 206.16, 2, 0)
	MovementLoopAddLocation(NPC, -57.39, -9.83, 205.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.56, -9.59, 205.89, 2, 0)
	MovementLoopAddLocation(NPC, -53.84, -8.15, 208.18, 2, 0)
	MovementLoopAddLocation(NPC, -45.97, -5.59, 214.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -61.53, -9.44, 217.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.08, -7.90, 211.96, 2, 0)
	MovementLoopAddLocation(NPC, -54.29, -8.11, 208.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.37, -6.93, 207.66, 2, 0)
	MovementLoopAddLocation(NPC, -43.06, -7.39, 204.81, 2, math.random(10, 20))
end


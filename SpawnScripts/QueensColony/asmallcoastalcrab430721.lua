--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430721.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430721.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:42:25 
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
	MovementLoopAddLocation(NPC, -61.11, -9.43, 210.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -59.83, -8.73, 211.54, 2, 0)
	MovementLoopAddLocation(NPC, -58.87, -8.44, 212.25, 2, 0)
	MovementLoopAddLocation(NPC, -55.22, -7.82, 214.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.17, -7.87, 212.97, 2, 0)
	MovementLoopAddLocation(NPC, -58.12, -8.29, 211.89, 2, 0)
	MovementLoopAddLocation(NPC, -59.17, -8.69, 210.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -58.11, -8.70, 209.87, 2, 0)
	MovementLoopAddLocation(NPC, -46.48, -8.26, 203.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.24, -8.45, 202.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.04, -8.05, 216.26, 2, 0)
	MovementLoopAddLocation(NPC, -57.81, -8.53, 218.41, 2, 0)
	MovementLoopAddLocation(NPC, -58.34, -8.85, 219.32, 2, 0)
	MovementLoopAddLocation(NPC, -59.41, -9.46, 220.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.98, -8.60, 218.81, 2, 0)
	MovementLoopAddLocation(NPC, -47.72, -8.66, 203.40, 2, 0)
	MovementLoopAddLocation(NPC, -47.26, -9.67, 201.70, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.65, -6.91, 215.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.38, -8.00, 216.04, 2, 0)
	MovementLoopAddLocation(NPC, -56.56, -8.41, 218.44, 2, 0)
	MovementLoopAddLocation(NPC, -58.40, -8.85, 219.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.89, -8.33, 209.68, 2, 0)
	MovementLoopAddLocation(NPC, -46.31, -6.10, 208.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.16, -6.14, 213.70, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.24, -8.02, 216.43, 2, 0)
	MovementLoopAddLocation(NPC, -54.11, -8.12, 218.06, 2, math.random(10, 20))
end

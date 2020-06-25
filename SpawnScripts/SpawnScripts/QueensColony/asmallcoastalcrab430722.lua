--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430722.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430722.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:42:28 
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
	MovementLoopAddLocation(NPC, -53.42, -7.88, 214.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.27, -8.52, 203.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.82, -5.67, 210.62, 2, 0)
	MovementLoopAddLocation(NPC, -49.02, -8.23, 211.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.17, -7.91, 211.90, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.10, -7.65, 204.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.06, -8.90, 207.52, 2, 0)
	MovementLoopAddLocation(NPC, -57.25, -9.09, 208.03, 2, 0)
	MovementLoopAddLocation(NPC, -59.49, -9.50, 208.90, 2, 0)
	MovementLoopAddLocation(NPC, -61.58, -9.46, 217.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -55.62, -7.91, 211.43, 2, 0)
	MovementLoopAddLocation(NPC, -51.73, -8.43, 207.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.40, -8.32, 210.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.32, -8.13, 213.20, 2, 0)
	MovementLoopAddLocation(NPC, -60.47, -9.23, 218.20, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -58.30, -8.34, 216.18, 2, 0)
	MovementLoopAddLocation(NPC, -53.07, -7.89, 213.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.31, -8.62, 202.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.69, -5.63, 210.58, 2, 0)
	MovementLoopAddLocation(NPC, -45.30, -5.23, 212.23, 2, math.random(10, 20))
end


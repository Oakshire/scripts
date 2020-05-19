--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430717.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430717.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:42:15 
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
	MovementLoopAddLocation(NPC, -46.29, -8.62, 202.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -54.23, -7.85, 214.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.21, -8.07, 208.63, 2, 0)
	MovementLoopAddLocation(NPC, -52.19, -8.47, 206.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -53.11, -8.10, 207.86, 2, 0)
	MovementLoopAddLocation(NPC, -57.63, -8.20, 211.73, 2, 0)
	MovementLoopAddLocation(NPC, -59.43, -8.58, 213.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -58.24, -8.68, 210.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -61.68, -9.83, 209.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -60.21, -9.37, 210.08, 2, 0)
	MovementLoopAddLocation(NPC, -50.18, -8.24, 214.05, 2, math.random(10, 20))
end



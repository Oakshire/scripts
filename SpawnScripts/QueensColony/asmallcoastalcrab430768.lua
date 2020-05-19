--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430768.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430768.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:41:52 
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
	MovementLoopAddLocation(NPC, -34.48, -8.51, 237.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.42, -7.96, 235.13, 2, 0)
	MovementLoopAddLocation(NPC, -27.30, -8.24, 246.90, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.85, -8.03, 244.66, 2, 0)
	MovementLoopAddLocation(NPC, -29.99, -8.09, 240.71, 2, 0)
	MovementLoopAddLocation(NPC, -32.23, -8.18, 237.32, 2, 0)
	MovementLoopAddLocation(NPC, -34.14, -8.06, 233.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.35, -7.96, 235.57, 2, 0)
	MovementLoopAddLocation(NPC, -24.49, -7.98, 235.90, 2, 0)
	MovementLoopAddLocation(NPC, -21.97, -7.94, 236.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.06, -7.99, 233.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.10, -8.04, 235.92, 2, 0)
end



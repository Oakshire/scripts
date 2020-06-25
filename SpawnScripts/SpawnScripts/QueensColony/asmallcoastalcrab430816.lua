--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430816.lua
 	Script Purpose	:	Waypoint Path for asmallcoastalcrab430816.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:41:45 
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
	MovementLoopAddLocation(NPC, 7.94, -9.01, 232.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.95, -9.16, 235.92, 2, 0)
	MovementLoopAddLocation(NPC, 7.40, -8.87, 237.27, 2, 0)
	MovementLoopAddLocation(NPC, 7.07, -9.22, 238.66, 2, 0)
	MovementLoopAddLocation(NPC, 6.14, -9.22, 240.14, 2, 0)
	MovementLoopAddLocation(NPC, 5.76, -8.70, 244.91, 2, 0)
	MovementLoopAddLocation(NPC, 6.81, -8.48, 249.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.75, -8.03, 238.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.60, -10.09, 238.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.82, -9.79, 238.27, 2, 0)
	MovementLoopAddLocation(NPC, 5.76, -8.27, 238.26, 2, 0)
	MovementLoopAddLocation(NPC, 4.41, -8.04, 238.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.09, -8.09, 236.44, 2, 0)
end

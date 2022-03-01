--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430817.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430817.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:41:47 
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
	MovementLoopAddLocation(NPC, 11.38, -13.21, 247.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.10, -8.50, 249.16, 2, 0)
	MovementLoopAddLocation(NPC, 6.24, -8.72, 251.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.78, -7.75, 245.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.39, -9.04, 253.60, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.17, -12.94, 247.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.67, -8.50, 248.27, 2, 0)
	MovementLoopAddLocation(NPC, 2.41, -8.58, 247.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.17, -7.81, 244.26, 2, 0)
	MovementLoopAddLocation(NPC, -1.77, -7.60, 239.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.59, -7.67, 244.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.53, -9.79, 241.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.17, -8.99, 243.93, 2, 0)
	MovementLoopAddLocation(NPC, 7.48, -8.67, 244.95, 2, 0)
	MovementLoopAddLocation(NPC, 7.84, -8.51, 246.15, 2, 0)
end



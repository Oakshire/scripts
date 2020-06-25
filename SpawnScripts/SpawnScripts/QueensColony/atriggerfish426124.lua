--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426124.lua
	Script Purpose	:	Waypoint Path for atriggerfish426124.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:45:07 
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
	MovementLoopAddLocation(NPC, -99.39, -12.39, 227.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -100.27, -13.82, 225.15, 2, 0)
	MovementLoopAddLocation(NPC, -109.52, -13.63, 229.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -105.47, -14.81, 232.7, 2, 0)
	MovementLoopAddLocation(NPC, -103.42, -14.98, 234.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -107.44, -12.03, 220.58, 2, 0)
	MovementLoopAddLocation(NPC, -106.56, -12.46, 214.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.65, -12.41, 214.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.03, -13.71, 225.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -101.06, -13.42, 216.85, 2, 0)
	MovementLoopAddLocation(NPC, -96.2, -14.09, 213.99, 2, 0)
	MovementLoopAddLocation(NPC, -94.49, -13.62, 214.44, 2, 0)
	MovementLoopAddLocation(NPC, -90.56, -13.77, 215.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -95.56, -13.58, 222.92, 2, 0)
	MovementLoopAddLocation(NPC, -97.57, -12.64, 225.96, 2, 0)
end



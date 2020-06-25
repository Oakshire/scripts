--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426173.lua
	Script Purpose	:	Waypoint Path for atriggerfish426173.lua
	Script Author	:	Rylec
	Script Date	:	10-23-2019 07:03:08 
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
	MovementLoopAddLocation(NPC, -62.25, -14.97, 267.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -62.31, -14.55, 264.66, 2, 0)
	MovementLoopAddLocation(NPC, -62.4, -13.9, 262.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -63.65, -13.88, 265.13, 2, 0)
	MovementLoopAddLocation(NPC, -64.27, -13.52, 267.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -62.19, -13.4, 264.15, 2, 0)
	MovementLoopAddLocation(NPC, -60.29, -12.36, 261.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.33, -12.38, 273.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -66.34, -12.26, 253.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -64.26, -12.28, 247.59, 2, math.random(10, 20))
end



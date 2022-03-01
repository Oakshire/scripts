--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426177.lua
	Script Purpose	:	Waypoint Path for atriggerfish426177.lua
	Script Author	:	Rylec
	Script Date	:	10-23-2019 07:03:31 
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
	MovementLoopAddLocation(NPC, -36.25, -10.08, 252.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34, -10.28, 262.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.04, -14.6, 278.72, 2, 0)
	MovementLoopAddLocation(NPC, -28.08, -14.84, 280.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.2, -11.62, 267.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -66.12, -12.35, 264.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.26, -12.32, 267.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -58.22, -12.25, 257.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.35, -11.6, 257.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -76.34, -12.27, 251.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -58.2, -12.24, 267.55, 2, math.random(10, 20))
end

--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426184.lua
	Script Purpose	:	Waypoint Path for atriggerfish426184.lua
	Script Author	:	Rylec
	Script Date	:	10-23-2019 07:03:48 
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
	MovementLoopAddLocation(NPC, -46.26, -12.18, 272.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.92, -13.56, 274.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.16, -14.02, 275.98, 2, 0)
	MovementLoopAddLocation(NPC, -34.96, -14.01, 277.52, 2, 0)
	MovementLoopAddLocation(NPC, -24.07, -13.63, 278.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.67, -12.92, 270.34, 2, 0)
	MovementLoopAddLocation(NPC, -31.99, -11.66, 267.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.62, -13.51, 280.28, 2, 0)
	MovementLoopAddLocation(NPC, -14.14, -13.6, 284.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20, -14.31, 275.34, 2, 0)
	MovementLoopAddLocation(NPC, -31.05, -13.45, 278.9, 2, 0)
	MovementLoopAddLocation(NPC, -33.46, -13.23, 276.84, 2, 0)
	MovementLoopAddLocation(NPC, -40.27, -12.31, 273.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.25, -12.41, 274.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.02, -14.05, 272.07, 2, 0)
	MovementLoopAddLocation(NPC, -30.79, -13.56, 276.49, 2, 0)
	MovementLoopAddLocation(NPC, -26, -14.94, 276.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.81, -14.42, 278.28, 2, 0)
	MovementLoopAddLocation(NPC, -14.03, -12.29, 279.08, 2, math.random(10, 20))
end


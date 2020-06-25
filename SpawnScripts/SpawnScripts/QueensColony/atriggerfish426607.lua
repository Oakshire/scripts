--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426607.lua
	Script Purpose	:	Waypoint Path for atriggerfish426607.lua
	Script Author	:	Rylec
	Script Date	:	10-22-2019 09:53:04 
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
	MovementLoopAddLocation(NPC, 18.91, -11.97, 270.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.06, -12.58, 248.22, 2, 0)
	MovementLoopAddLocation(NPC, 13.89, -11.99, 246.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.12, -12.53, 264.23, 2, 0)
	MovementLoopAddLocation(NPC, 8.62, -13.61, 269.47, 2, 0)
	MovementLoopAddLocation(NPC, 7.88, -13.49, 275.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.92, -11.97, 273.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.92, -10.95, 265.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.74, -11.34, 266.86, 2, 0)
	MovementLoopAddLocation(NPC, 6.86, -11.76, 267.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.88, -14.03, 273.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.85, -14.22, 272.17, 2, 0)
	MovementLoopAddLocation(NPC, 10.33, -13.79, 270.46, 2, 0)
	MovementLoopAddLocation(NPC, 12.56, -13.18, 261.93, 2, 0)
	MovementLoopAddLocation(NPC, 14.85, -12.87, 255.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.07, -11.96, 267.82, 2, 0)
	MovementLoopAddLocation(NPC, 4.5, -10.97, 274.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.98, -12.96, 258.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.09, -12.33, 266.4, 2, 0)
end


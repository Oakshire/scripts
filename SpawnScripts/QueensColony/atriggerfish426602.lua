--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426602.lua
	Script Purpose	:	Waypoint Path for atriggerfish426602.lua
	Script Author	:	Rylec
	Script Date	:	10-22-2019 09:52:50 
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
	MovementLoopAddLocation(NPC, 14.79, -12.47, 257.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.94, -13.27, 263.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.64, -13.88, 265.55, 2, 0)
	MovementLoopAddLocation(NPC, 16.75, -14.66, 271.94, 2, 0)
	MovementLoopAddLocation(NPC, 18.01, -14.92, 272.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.91, -14.31, 271.98, 2, 0)
	MovementLoopAddLocation(NPC, 8.26, -13.37, 270.01, 2, 0)
	MovementLoopAddLocation(NPC, 5.93, -12.92, 267.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.68, -12.33, 267.01, 2, 0)
	MovementLoopAddLocation(NPC, 18.87, -11.52, 260.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.18, -12.35, 272.06, 2, 0)
	MovementLoopAddLocation(NPC, 7.93, -11.92, 282.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.8, -12.62, 271.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.1, -14.33, 273.79, 2, 0)
	MovementLoopAddLocation(NPC, 3.05, -15.03, 275.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.43, -14.83, 276.13, 2, 0)
	MovementLoopAddLocation(NPC, 12.88, -13.96, 269.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.13, -13.37, 269.26, 2, 0)
	MovementLoopAddLocation(NPC, 17.9, -12.47, 263.41, 2, 0)
	MovementLoopAddLocation(NPC, 19.67, -12.5, 257.41, 2, 0)
	MovementLoopAddLocation(NPC, 20.86, -11.55, 254.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.12, -12.59, 261.16, 2, 0)
	MovementLoopAddLocation(NPC, 11.51, -12.35, 269.17, 2, 0)
	MovementLoopAddLocation(NPC, 9.03, -11.04, 270.93, 2, math.random(10, 20))
end


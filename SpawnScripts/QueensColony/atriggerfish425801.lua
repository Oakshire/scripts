--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425801.lua
	Script Purpose	:	Waypoint Path for atriggerfish425801.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:34:27 
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
	MovementLoopAddLocation(NPC, 1.07, -11.95, -34.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.52, -12.03, -32.35, 2, 0)
	MovementLoopAddLocation(NPC, 15.41, -12.44, -24.53, 2, 0)
	MovementLoopAddLocation(NPC, 17.92, -13.3, -21.2, 2, 0)
	MovementLoopAddLocation(NPC, 19.72, -14.08, -20.02, 2, 0)
	MovementLoopAddLocation(NPC, 21.41, -14.68, -20.56, 2, 0)
	MovementLoopAddLocation(NPC, 22.1, -14.79, -21.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.98, -14.18, -16.98, 2, 0)
	MovementLoopAddLocation(NPC, 27.92, -13.2, -13.31, 2, 0)
	MovementLoopAddLocation(NPC, 30.89, -12.7, -10.51, 2, 0)
	MovementLoopAddLocation(NPC, 37.91, -11.73, -8.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.79, -12.17, -9.74, 2, 0)
	MovementLoopAddLocation(NPC, 29.66, -12.47, -12.46, 2, 0)
	MovementLoopAddLocation(NPC, 24.12, -12.74, -17.82, 2, 0)
	MovementLoopAddLocation(NPC, 20.21, -12, -23.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.19, -13.22, -21.24, 2, 0)
	MovementLoopAddLocation(NPC, 21.81, -14.32, -18.82, 2, 0)
	MovementLoopAddLocation(NPC, 21, -14.6, -15.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.41, -14.34, -13.28, 2, 0)
	MovementLoopAddLocation(NPC, 31.08, -13.12, -9.79, 2, 0)
	MovementLoopAddLocation(NPC, 33.93, -12.72, -6.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.81, -12.51, -24.92, 2, 0)
	MovementLoopAddLocation(NPC, 19.3, -11.82, -35.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.21, -11.96, -47.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.85, -12.34, -42, 2, 0)
	MovementLoopAddLocation(NPC, 20.1, -13.23, -31.88, 2, 0)
	MovementLoopAddLocation(NPC, 24.41, -12.88, -26.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.85, -11.65, -31.55, 2, 0)
	MovementLoopAddLocation(NPC, 3.75, -11.67, -33.61, 2, 0)
	MovementLoopAddLocation(NPC, -1.76, -11.84, -34.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.35, -12.16, -33.72, 2, 0)
	MovementLoopAddLocation(NPC, 5.44, -12.15, -32.49, 2, 0)
	MovementLoopAddLocation(NPC, 14.9, -12.4, -24.96, 2, 0)
	MovementLoopAddLocation(NPC, 17.24, -13.05, -22.03, 2, 0)
	MovementLoopAddLocation(NPC, 17.98, -13.21, -19.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.16, -12.54, -22.16, 2, 0)
end


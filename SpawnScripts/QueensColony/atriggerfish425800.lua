--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425800.lua
	Script Purpose	:	Waypoint Path for atriggerfish425800.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:32:15 
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
	MovementLoopAddLocation(NPC, 37.61, -12, 4.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.92, -12.39, -11.96, 2, 0)
	MovementLoopAddLocation(NPC, 37.11, -12.45, -23.62, 2, 0)
	MovementLoopAddLocation(NPC, 38.19, -11.16, -43.2, 2, 0)
	MovementLoopAddLocation(NPC, 37.58, -11.01, -48.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.2, -10.31, -38.84, 2, 0)
	MovementLoopAddLocation(NPC, 31.99, -10.4, -28.91, 2, 0)
	MovementLoopAddLocation(NPC, 30.06, -10.45, -17.66, 2, 0)
	MovementLoopAddLocation(NPC, 25.37, -11.89, -6.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.83, -11.96, -3.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.12, -12.5, -5.51, 2, 0)
	MovementLoopAddLocation(NPC, 34.62, -14.92, -14.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.84, -14.52, -17.98, 2, 0)
	MovementLoopAddLocation(NPC, 19.08, -13.97, -20.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.2, -13.4, -24.77, 2, 0)
	MovementLoopAddLocation(NPC, 13.17, -11.95, -59.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.34, -12.46, -59.3, 2, 0)
	MovementLoopAddLocation(NPC, -5.22, -12.05, -62.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.09, -11.99, -59.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.82, -11.55, -48.78, 2, 0)
	MovementLoopAddLocation(NPC, 22.35, -11.54, -37.86, 2, 0)
	MovementLoopAddLocation(NPC, 22.07, -13.87, -27.81, 2, 0)
	MovementLoopAddLocation(NPC, 22.03, -14.27, -22.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.69, -14.64, -20.78, 2, 0)
	MovementLoopAddLocation(NPC, 33.5, -12.69, -0.06, 2, 0)
end


--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425767.lua
	Script Purpose	:	Waypoint Path for atriggerfish425767.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:26 
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
	MovementLoopAddLocation(NPC, -32.81, -12.06, 16.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.94, -10.48, -12.52, 2, 0)
	MovementLoopAddLocation(NPC, -30.02, -11.04, -15.67, 2, 0)
	MovementLoopAddLocation(NPC, -26.06, -11.3, -16.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.32, -10.65, -42.44, 2, 0)
	MovementLoopAddLocation(NPC, -2.51, -11.52, -48.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.78, -11.52, -36.9, 2, 0)
	MovementLoopAddLocation(NPC, -8.83, -11.54, -32.15, 2, 0)
	MovementLoopAddLocation(NPC, -14.29, -12.3, -18.39, 2, 0)
	MovementLoopAddLocation(NPC, -14.76, -12.38, -16.73, 2, 0)
	MovementLoopAddLocation(NPC, -22.02, -11.62, -4.55, 2, 0)
	MovementLoopAddLocation(NPC, -24.83, -11.39, 6.33, 2, 0)
	MovementLoopAddLocation(NPC, -25.66, -11.33, 8.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.92, -11.66, 19.79, 2, 0)
	MovementLoopAddLocation(NPC, -31.6, -11.9, 21.26, 2, 0)
	MovementLoopAddLocation(NPC, -32.18, -12.21, 23.53, 2, 0)
	MovementLoopAddLocation(NPC, -32.68, -12.24, 26.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.97, -12.22, 9.78, 2, 0)
	MovementLoopAddLocation(NPC, -32.71, -12, 7.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.36, -12.48, 24.26, 2, 0)
	MovementLoopAddLocation(NPC, -35.87, -12.49, 24.87, 2, 0)
	MovementLoopAddLocation(NPC, -39.73, -12.44, 25.05, 2, 0)
	MovementLoopAddLocation(NPC, -39.93, -12.92, 29.72, 2, 0)
	MovementLoopAddLocation(NPC, -40.54, -12.93, 30.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -55.03, -11.06, 26.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.43, -11.47, 22.28, 2, 0)
	MovementLoopAddLocation(NPC, -43.28, -12.31, 20.37, 2, 0)
	MovementLoopAddLocation(NPC, -37.51, -12.58, 19.47, 2, 0)
end


--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425814.lua
	Script Purpose	:	Waypoint Path for atriggerfish425814.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:43:01 
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
	MovementLoopAddLocation(NPC, 31.33, -13.05, -9.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.74, -13.11, -21.05, 2, 0)
	MovementLoopAddLocation(NPC, 23.28, -13.21, -33.53, 2, 0)
	MovementLoopAddLocation(NPC, 18.44, -12.52, -42.32, 2, 0)
	MovementLoopAddLocation(NPC, 16.37, -12.36, -49.39, 2, 0)
	MovementLoopAddLocation(NPC, 9.1, -11.83, -67.44, 2, 0)
	MovementLoopAddLocation(NPC, 4.01, -11.45, -76.46, 2, 0)
	MovementLoopAddLocation(NPC, 0.78, -11.2, -84.72, 2, 0)
	MovementLoopAddLocation(NPC, -1.82, -11.65, -91.53, 2, 0)
	MovementLoopAddLocation(NPC, -3.51, -11.93, -95.82, 2, 0)
	MovementLoopAddLocation(NPC, -3.5099, -11.92, -95.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.37, -11.15, -91.26, 2, 0)
	MovementLoopAddLocation(NPC, -1.99, -10.47, -80.08, 2, 0)
	MovementLoopAddLocation(NPC, -0.47, -11.02, -71.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.99, -11.9, -44.43, 2, 0)
	MovementLoopAddLocation(NPC, -4.88, -11.87, -36.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.18, -12.09, -26.92, 2, 0)
	MovementLoopAddLocation(NPC, 13.5, -12.39, -21.27, 2, 0)
	MovementLoopAddLocation(NPC, 17.95, -12.57, -19.12, 2, 0)
	MovementLoopAddLocation(NPC, 27.09, -12.94, -10.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.32, -12.64, -26.78, 2, 0)
	MovementLoopAddLocation(NPC, 42.37, -12.02, -30.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.76, -12.42, -27.11, 2, 0)
end



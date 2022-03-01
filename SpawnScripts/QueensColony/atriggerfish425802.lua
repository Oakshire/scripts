--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425802.lua
	Script Purpose	:	Waypoint Path for atriggerfish425802.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:34:56 
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
     	MovementLoopAddLocation(NPC, 0.66, -11.89, -78.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1, -11.7, -75.81, 2, 0)
	MovementLoopAddLocation(NPC, -3.78, -11.48, -69.8, 2, 0)
	MovementLoopAddLocation(NPC, -5.5, -12.02, -64.58, 2, 0)
	MovementLoopAddLocation(NPC, -5.67, -12.12, -61.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.2, -12.05, -57.64, 2, 0)
	MovementLoopAddLocation(NPC, 21.14, -11.97, -40.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.7, -11.54, -44.57, 2, 0)
	MovementLoopAddLocation(NPC, -5.33, -11.93, -45.49, 2, 0)
	MovementLoopAddLocation(NPC, -8.98, -11.9, -44.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.85, -11.97, -42.9, 2, 0)
	MovementLoopAddLocation(NPC, 1, -12, -38.11, 2, 0)
	MovementLoopAddLocation(NPC, 5.74, -12.11, -32.3, 2, 0)
	MovementLoopAddLocation(NPC, 11.45, -11.97, -23.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.67, -11.71, -21.05, 2, 0)
	MovementLoopAddLocation(NPC, 28.38, -13.34, -16.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.61, -12.82, -28.09, 2, 0)
	MovementLoopAddLocation(NPC, 19.78, -12.76, -36.72, 2, 0)
	MovementLoopAddLocation(NPC, 15.91, -12.4, -43.42, 2, 0)
	MovementLoopAddLocation(NPC, 14.34, -12.42, -52.42, 2, 0)
	MovementLoopAddLocation(NPC, 9.87, -12.46, -65.73, 2, 0)
	MovementLoopAddLocation(NPC, 9.49, -11.81, -70.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.9, -12.07, -73.82, 2, 0)
end


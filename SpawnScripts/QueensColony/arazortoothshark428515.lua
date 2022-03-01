--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428515.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428515.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:37:45 
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
	MovementLoopAddLocation(NPC, 7.78, -11.7, -30.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.11, -11.67, -25.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.82, -11.23, -73.46, 2, 0)
	MovementLoopAddLocation(NPC, -1.67, -11.63, -77.59, 2, 0)
	MovementLoopAddLocation(NPC, -3.76, -11.77, -81.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.01, -11.11, -76.02, 2, 0)
	MovementLoopAddLocation(NPC, -3.38, -11.31, -61.5, 2, 0)
	MovementLoopAddLocation(NPC, -4.81, -11.63, -49.05, 2, 0)
	MovementLoopAddLocation(NPC, -4.28, -11.82, -44.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.31, -11.75, -65.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.26, -12.07, -50.9, 2, 0)
	MovementLoopAddLocation(NPC, 5.26, -12.68, -44.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.29, -12.16, -40.29, 2, 0)
	MovementLoopAddLocation(NPC, 26.68, -12.37, -31.55, 2, 0)
	MovementLoopAddLocation(NPC, 37.35, -12.62, -25.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.98, -12.85, -24.29, 2, 0)
	MovementLoopAddLocation(NPC, 18.87, -12.15, -25.49, 2, 0)
end


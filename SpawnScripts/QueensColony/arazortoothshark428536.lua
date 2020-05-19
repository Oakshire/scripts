--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428536.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428536.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:27:32 
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
	MovementLoopAddLocation(NPC, 12.05, -13.51, 21.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.74, -12.77, 25.94, 2, 0)
	MovementLoopAddLocation(NPC, -20.8, -12.34, 37.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.49, -13.52, 33.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.06, -12.52, 31.75, 2, 0)
	MovementLoopAddLocation(NPC, 33.32, -12.15, 27.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.21, -13.2, 34.33, 2, 0)
	MovementLoopAddLocation(NPC, 15.44, -13.91, 38.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.64, -13.55, 50.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.34, -13.65, 43.95, 2, 0)
	MovementLoopAddLocation(NPC, 0.1, -13.83, 37.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.01, -13, 43.22, 2, 0)
	MovementLoopAddLocation(NPC, 5.89, -11.99, 58.41, 2, 0)
	MovementLoopAddLocation(NPC, 5.79, -11.52, 64.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.63, -12.09, 58.55, 2, 0)
	MovementLoopAddLocation(NPC, 15.37, -12.3, 49.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.89, -12.71, 31.78, 2, 0)
end



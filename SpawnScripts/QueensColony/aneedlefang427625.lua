--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427625.lua
	Script Purpose	:	Waypoint Path for aneedlefang427625.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:27:27 
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
	MovementLoopAddLocation(NPC, 19.18, -13.56, 21.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.35, -13.26, 28.55, 2, 0)
	MovementLoopAddLocation(NPC, -14.3, -13.65, 38.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.15, -12.84, 41.59, 2, 0)
	MovementLoopAddLocation(NPC, 5.44, -13.42, 46.33, 2, 0)
	MovementLoopAddLocation(NPC, 8.5, -13.48, 49.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.68, -14.21, 42.14, 2, 0)
	MovementLoopAddLocation(NPC, 9.11, -14.33, 34.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.56, -13.44, 49.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.87, -12.75, 47.14, 2, 0)
	MovementLoopAddLocation(NPC, 36.53, -12.12, 48.99, 2, 0)
	MovementLoopAddLocation(NPC, 43.5, -11.95, 53.04, 2, 0)
	MovementLoopAddLocation(NPC, 48.25, -12.27, 56.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.12, -11.34, 58.49, 2, 0)
	MovementLoopAddLocation(NPC, 24.78, -11.23, 60.26, 2, 0)
	MovementLoopAddLocation(NPC, 14.81, -11.81, 66.88, 2, 0)
	MovementLoopAddLocation(NPC, 8.82, -11.62, 69.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.96, -11.89, 56.42, 2, 0)
	MovementLoopAddLocation(NPC, 57.38, -12.84, 53.11, 2, 0)
	MovementLoopAddLocation(NPC, 63.73, -13.09, 52.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.94, -11.83, 48.1, 2, 0)
	MovementLoopAddLocation(NPC, 39.24, -11.99, 41.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.5, -12.34, 39.69, 2, 0)
	MovementLoopAddLocation(NPC, 13.34, -12.71, 29.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.37, -13.59, 25.07, 2, 0)
end



--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427626.lua
	Script Purpose	:	Waypoint Path for aneedlefang427626.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:19:50 
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
	MovementLoopAddLocation(NPC, -22.8, -13.13, 41.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.65, -12.45, 40.06, 2, 0)
	MovementLoopAddLocation(NPC, 6.87, -12, 38.15, 2, 0)
	MovementLoopAddLocation(NPC, 12.31, -11.86, 35.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.58, -12.05, 33.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.46, -12.18, 36.69, 2, 0)
	MovementLoopAddLocation(NPC, 19.23, -12.05, 47.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.68, -12.67, 55.36, 2, 0)
	MovementLoopAddLocation(NPC, 26.65, -12.85, 57.95, 2, 0)
	MovementLoopAddLocation(NPC, 34.73, -12.6, 60.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.65, -11.75, 56.61, 2, 0)
	MovementLoopAddLocation(NPC, 34.12, -12.29, 49.46, 2, 0)
	MovementLoopAddLocation(NPC, 30.43, -13.46, 45.23, 2, 0)
	MovementLoopAddLocation(NPC, 23.09, -13.75, 40.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.87, -14.08, 47.67, 2, 0)
	MovementLoopAddLocation(NPC, 3.69, -13.74, 49.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.04, -13.06, 44.58, 2, 0)
	MovementLoopAddLocation(NPC, 0.89, -13.08, 40.81, 2, 0)
	MovementLoopAddLocation(NPC, -0.15, -13.03, 32.53, 2, 0)
	MovementLoopAddLocation(NPC, -1.66, -13.12, 21.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.01, -12.5, 24.3, 2, 0)
	MovementLoopAddLocation(NPC, 15.22, -12.28, 25.79, 2, 0)
	MovementLoopAddLocation(NPC, 24.86, -13.64, 26.77, 2, 0)
	MovementLoopAddLocation(NPC, 29.74, -13.77, 28.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.41, -12.45, 32.03, 2, 0)
	MovementLoopAddLocation(NPC, 46.19, -11.14, 34.78, 2, 0)
	MovementLoopAddLocation(NPC, 52.64, -11.29, 39.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.97, -10.7, 38.05, 2, 0)
	MovementLoopAddLocation(NPC, -6.23, -13.13, 38.53, 2, 0)
end

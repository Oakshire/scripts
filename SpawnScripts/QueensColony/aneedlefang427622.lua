--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427622.lua
	Script Purpose	:	Waypoint Path for aneedlefang427622.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:26:03 
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
	MovementLoopAddLocation(NPC, 86.79, -12.97, 5.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.75, -13.05, 5.95, 2, 0)
	MovementLoopAddLocation(NPC, 73.75, -13.85, 5.21, 2, 0)
	MovementLoopAddLocation(NPC, 66.12, -14.11, 4.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65, -12.39, 13.31, 2, 0)
	MovementLoopAddLocation(NPC, 61.82, -11.82, 31.02, 2, 0)
	MovementLoopAddLocation(NPC, 59.58, -12.02, 37.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.26, -11.87, 40.3, 2, 0)
	MovementLoopAddLocation(NPC, 77.12, -12.5, 43.15, 2, 0)
	MovementLoopAddLocation(NPC, 79.87, -12.91, 46.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.03, -12.44, 47.36, 2, 0)
	MovementLoopAddLocation(NPC, 68.3, -12.97, 50.4, 2, 0)
	MovementLoopAddLocation(NPC, 64.76, -13.13, 51.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.15, -12.81, 53.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.53, -11.63, 46.06, 2, 0)
	MovementLoopAddLocation(NPC, 68.56, -11.97, 39.85, 2, 0)
	MovementLoopAddLocation(NPC, 73.21, -12.25, 27.4, 2, 0)
	MovementLoopAddLocation(NPC, 81.03, -12.88, 13.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.68, -12.31, 15.66, 2, 0)
	MovementLoopAddLocation(NPC, 63.04, -12.9, 21.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.95, -12.38, 15.52, 2, 0)
	MovementLoopAddLocation(NPC, 49.28, -13.11, 9.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.35, -13.08, 7.58, 2, 0)
	MovementLoopAddLocation(NPC, 59.39, -14.07, 2.71, 2, 0)
	MovementLoopAddLocation(NPC, 62.81, -14.16, 1.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.52, -13.03, 5.9, 2, 0)
end


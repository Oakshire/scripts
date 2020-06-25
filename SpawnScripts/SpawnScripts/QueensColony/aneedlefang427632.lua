--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427632.lua
	Script Purpose	:	Waypoint Path for aneedlefang427632.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:22:14 
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
	MovementLoopAddLocation(NPC, -8.19, -14, 30.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.6, -13.78, 29.38, 2, 0)
	MovementLoopAddLocation(NPC, 10.73, -14.15, 22.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.06, -11.95, 36.33, 2, 0)
	MovementLoopAddLocation(NPC, -0.05, -11.58, 47.66, 2, 0)
	MovementLoopAddLocation(NPC, -1.89, -11.2, 58.5, 2, 0)
	MovementLoopAddLocation(NPC, 1.2, -11.14, 63.4, 2, 0)
	MovementLoopAddLocation(NPC, 46.55, -10.48, 86.25, 2, 0)
	MovementLoopAddLocation(NPC, 60.77, -11.22, 90.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.08, -11.01, 82.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.43, -10.67, 78.55, 2, 0)
	MovementLoopAddLocation(NPC, 26.99, -11.69, 69.49, 2, 0)
	MovementLoopAddLocation(NPC, 18.26, -12.2, 67.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.06, -11.94, 55.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.09, -12.82, 31.14, 2, 0)
	MovementLoopAddLocation(NPC, 36.9, -13.39, 21.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.08, -14.03, 43.71, 2, math.random(10, 20))
end


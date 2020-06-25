--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427623.lua
	Script Purpose	:	Waypoint Path for aneedlefang427623.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:26:27 
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
	MovementLoopAddLocation(NPC, 62.95, -11.06, 62.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.88, -10.3, 46.76, 2, 0)
	MovementLoopAddLocation(NPC, 65.07, -10.47, 23.42, 2, 0)
	MovementLoopAddLocation(NPC, 70.47, -11.36, 8.82, 2, 0)
	MovementLoopAddLocation(NPC, 73.17, -12.57, 2.04, 2, 0)
	MovementLoopAddLocation(NPC, 73.31, -13.02, -2.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.04, -12.55, 8.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.14, -12.67, 8.07, 2, 0)
	MovementLoopAddLocation(NPC, 80.28, -12.56, 14.37, 2, 0)
	MovementLoopAddLocation(NPC, 84.17, -13.3, 19.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.88, -11.7, 19.91, 2, 0)
	MovementLoopAddLocation(NPC, 74.89, -11.45, 23.07, 2, 0)
	MovementLoopAddLocation(NPC, 69.18, -12.13, 24.68, 2, 0)
	MovementLoopAddLocation(NPC, 64.37, -12.66, 25.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.5, -12.16, 24.99, 2, 0)
	MovementLoopAddLocation(NPC, 81.94, -11.93, 22.24, 2, 0)
	MovementLoopAddLocation(NPC, 96.68, -12.63, 21.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 100.6, -11.51, 24.33, 2, 0)
	MovementLoopAddLocation(NPC, 103.94, -11.5, 25.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 99.12, -10.63, 31.62, 2, 0)
	MovementLoopAddLocation(NPC, 90.97, -10.3, 37.49, 2, 0)
end



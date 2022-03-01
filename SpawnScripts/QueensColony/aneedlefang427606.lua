--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427606.lua
	Script Purpose	:	Waypoint Path for aneedlefang427606.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:36:57 
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
	MovementLoopAddLocation(NPC, 31.60, -12.38, -14.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.23, -12.51, -22.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.25, -12.87, -14.61, 2, 0)
	MovementLoopAddLocation(NPC, 23.98, -13.32, -8.57, 2, 0)
	MovementLoopAddLocation(NPC, 20.83, -13.68, -4.8, 2, 0)
	MovementLoopAddLocation(NPC, 16.47, -13.67, -4.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.22, -13.86, 4.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22, -13.95, -4.27, 2, 0)
	MovementLoopAddLocation(NPC, 27.91, -14.09, -13.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.29, -12.63, -26.67, 2, 0)
	MovementLoopAddLocation(NPC, 22.06, -10.98, -47.3, 2, 0)
	MovementLoopAddLocation(NPC, 18.26, -12.12, -59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.34, -11.94, -34.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.75, -11.81, -29.23, 2, 0)
	MovementLoopAddLocation(NPC, 33.19, -12.55, -13.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.82, -12.61, -3.41, 2, math.random(10, 20))
end


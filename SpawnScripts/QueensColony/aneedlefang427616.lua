--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427616.lua
	Script Purpose	:	Waypoint Path for aneedlefang427616.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:42:46 
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
	MovementLoopAddLocation(NPC, 52.88, -13.07, -12.2599, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.28, -13.05, -12.33, 2, 0)
	MovementLoopAddLocation(NPC, 35.12, -13.93, -12.38, 2, 0)
	MovementLoopAddLocation(NPC, 25.97, -14.05, -14.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.36, -12.43, -18.97, 2, 0)
	MovementLoopAddLocation(NPC, 12.89, -12.07, -22.19, 2, 0)
	MovementLoopAddLocation(NPC, 1.23, -12.02, -28.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.48, -11.72, -26.46, 2, 0)
	MovementLoopAddLocation(NPC, 18.51, -12.06, -24.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.66, -11.88, -18.73, 2, 0)
	MovementLoopAddLocation(NPC, 21.25, -11.99, -10.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.48, -11.02, -51.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.78, -11.02, -47.51, 2, 0)
	MovementLoopAddLocation(NPC, 12.9, -11, -36.38, 2, 0)
	MovementLoopAddLocation(NPC, 27.32, -13.03, -26.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.29, -12.69, -20.16, 2, 0)
end



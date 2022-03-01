--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427611.lua
	Script Purpose	:	Waypoint Path for aneedlefang427611.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:40:53 
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
	MovementLoopAddLocation(NPC, 25.21, -13.45, -20.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.52, -12.92, -12.7, 2, 0)
	MovementLoopAddLocation(NPC, 16.7, -14.01, -1.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.1, -12.24, -6.33, 2, 0)
	MovementLoopAddLocation(NPC, 17.5, -12.15, -25.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.77, -12.01, -33.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.54, -11.88, -23.65, 2, 0)
	MovementLoopAddLocation(NPC, 22.36, -12.59, -11.05, 2, 0)
	MovementLoopAddLocation(NPC, 25.77, -13.78, -2.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.94, -13.65, -3.98, 2, 0)
	MovementLoopAddLocation(NPC, 40.6, -12.46, -6.78, 2, 0)
	MovementLoopAddLocation(NPC, 52.03, -12.09, -14.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.51, -12.08, -12.95, 2, 0)
	MovementLoopAddLocation(NPC, 16.4, -12.08, -18.92, 2, 0)
	MovementLoopAddLocation(NPC, 3.18, -12.08, -19.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.64, -12.03, -20.78, 2, 0)
	MovementLoopAddLocation(NPC, 21.09, -13.01, -25.92, 2, 0)
	MovementLoopAddLocation(NPC, 27.98, -13.6, -30.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.74, -15.32, -21.58, 2, math.random(10, 20))
end



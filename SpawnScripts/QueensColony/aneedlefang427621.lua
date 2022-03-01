--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427621.lua
	Script Purpose	:	Waypoint Path for aneedlefang427621.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:25:32 
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
	MovementLoopAddLocation(NPC, 14.4, -12.54, 60.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.5, -11.98, 57.5, 2, 0)
	MovementLoopAddLocation(NPC, 32.62, -12.07, 55.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.78, -11.81, 68.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.92, -11.52, 58.93, 2, 0)
	MovementLoopAddLocation(NPC, 2.17, -11.9, 49.64, 2, 0)
	MovementLoopAddLocation(NPC, -0.51, -12.32, 42.73, 2, 0)
	MovementLoopAddLocation(NPC, -4.15, -13.16, 35.6, 2, 0)
	MovementLoopAddLocation(NPC, -8.19, -13.74, 30.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.3, -13.74, 38.61, 2, 0)
	MovementLoopAddLocation(NPC, 6.37, -13.9, 42.13, 2, 0)
	MovementLoopAddLocation(NPC, 9.05, -13.96, 47.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.55, -12.11, 46.35, 2, 0)
	MovementLoopAddLocation(NPC, -7.03, -11.79, 46.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.18, -12.21, 56.19, 2, 0)
	MovementLoopAddLocation(NPC, 12.23, -12.76, 62.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.21, -12.18, 57.59, 2, 0)
	MovementLoopAddLocation(NPC, 40.55, -11.73, 61.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.54, -12, 64.15, 2, 0)
end



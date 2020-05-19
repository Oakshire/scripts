--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425516.lua
	Script Purpose	:	Waypoint Path for ashoalglider425516.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:58 
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
	MovementLoopAddLocation(NPC, 49.82, -12.45, -45.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.42, -11.68, -42.57, 2, 0)
	MovementLoopAddLocation(NPC, 43.07, -11.91, -37.5, 2, 0)
	MovementLoopAddLocation(NPC, 39.98, -11.94, -30.22, 2, 0)
	MovementLoopAddLocation(NPC, 35.94, -11.94, -23.99, 2, 0)
	MovementLoopAddLocation(NPC, 30.58, -11.85, -19.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.62, -11.53, -30.39, 2, 0)
	MovementLoopAddLocation(NPC, 48.6, -11.53, -30.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.46, -12.08, -25.53, 2, 0)
	MovementLoopAddLocation(NPC, 40.84, -11.89, -11.8, 2, 0)
	MovementLoopAddLocation(NPC, 35.9, -11.61, -3.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.81, -12.4, -7.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.67, -13.42, -10.32, 2, 0)
	MovementLoopAddLocation(NPC, 30.7, -13.63, -15.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.73, -13.34, -32.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.73, -13.37, -26.16, 2, 0)
	MovementLoopAddLocation(NPC, 20.17, -12.45, 5.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.19, -12.53, 0.48, 2, 0)
	MovementLoopAddLocation(NPC, 14.04, -12.39, -7.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.58, -12.27, -9.44, 2, 0)
	MovementLoopAddLocation(NPC, 22.67, -12.32, -13.94, 2, 0)
	MovementLoopAddLocation(NPC, 33.63, -12.14, -28.98, 2, 0)
	MovementLoopAddLocation(NPC, 39.72, -11.41, -33.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.64, -11.72, -39.92, 2, 0)
end



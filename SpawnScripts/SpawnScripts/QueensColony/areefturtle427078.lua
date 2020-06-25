--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427078.lua
	Script Purpose	:	Waypoint Path for areefturtle427078.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:36:12 
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
	MovementLoopAddLocation(NPC, 65.15, -15.1, -9.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.06, -14.35, -6.09, 2, 0)
	MovementLoopAddLocation(NPC, 52.09, -13.29, -2.12, 2, 0)
	MovementLoopAddLocation(NPC, 48.49, -12.69, -1.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.1, -13.06, -1.44, 2, 0)
	MovementLoopAddLocation(NPC, 31.3, -13.78, -5.54, 2, 0)
	MovementLoopAddLocation(NPC, 21.38, -13.08, -9.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.49, -13.47, -2.06, 2, 0)
	MovementLoopAddLocation(NPC, 28, -12.91, 1.12, 2, 0)
	MovementLoopAddLocation(NPC, 30.66, -12.81, 2.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.67, -12.97, -4.6, 2, 0)
	MovementLoopAddLocation(NPC, 22.46, -12.42, -8.43, 2, 0)
	MovementLoopAddLocation(NPC, 16.84, -11.82, -23.05, 2, 0)
	MovementLoopAddLocation(NPC, 12.29, -11.81, -33.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.4, -12.88, -23.15, 2, 0)
	MovementLoopAddLocation(NPC, 45.78, -13.05, -20.29, 2, 0)
	MovementLoopAddLocation(NPC, 51.13, -12.71, -13.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.3, -12.21, -12.55, 2, 0)
	MovementLoopAddLocation(NPC, 58.3, -12.02, -12.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.29, -13.25, -13.9, 2, 0)
	MovementLoopAddLocation(NPC, 68.4, -13.71, -15.03, 2, 0)
	MovementLoopAddLocation(NPC, 68.25, -13.71, -15.029, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.62, -12.4, -15.05, 2, 0)
	MovementLoopAddLocation(NPC, 47.77, -11.98, -14.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.27, -11.77, -11.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.76, -12.46, -11.87, 2, 0)
	MovementLoopAddLocation(NPC, 24.17, -13.87, -10.24, 2, 0)
	MovementLoopAddLocation(NPC, 56.9, -13.87, -9.34, 2, 0)
	MovementLoopAddLocation(NPC, 62.58, -15.37, -9.33, 2, 0)
end

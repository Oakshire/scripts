--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427038.lua
	Script Purpose	:	Waypoint Path for areefturtle427038.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:16:37 
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
	MovementLoopAddLocation(NPC, -17.3, -11.61, -49.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.72, -11.7, -35, 2, 0)
	MovementLoopAddLocation(NPC, -26.51, -11.4, -18.83, 2, 0)
	MovementLoopAddLocation(NPC, -32.27, -10.64, -11.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.36, -10.49, -21.57, 2, 0)
	MovementLoopAddLocation(NPC, -35.32, -10.47, -33, 2, 0)
	MovementLoopAddLocation(NPC, -43.15, -10.6, -51.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.56, -10.4, -14.63, 2, 0)
	MovementLoopAddLocation(NPC, -24.68, -11.06, -6.31, 2, 0)
	MovementLoopAddLocation(NPC, -23.92, -11.21, -2.63, 2, 0)
	MovementLoopAddLocation(NPC, -20.86, -12.46, 0.79, 2, 0)
	MovementLoopAddLocation(NPC, -18.28, -13.12, 5.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.16, -13.3, 20.47, 2, 0)
	MovementLoopAddLocation(NPC, -29.47, -13.75, 26.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.46, -12.4, 19.87, 2, 0)
	MovementLoopAddLocation(NPC, -26.95, -12.11, 15.92, 2, 0)
	MovementLoopAddLocation(NPC, -25.66, -11.34, 0.03, 2, 0)
	MovementLoopAddLocation(NPC, -24.99, -11.33, -4.16, 2, 0)
	MovementLoopAddLocation(NPC, -25.38, -11.69, -11.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.86, -11.5, -4.86, 2, 0)
	MovementLoopAddLocation(NPC, -25.1, -12.25, 15.76, 2, 0)
	MovementLoopAddLocation(NPC, -20.24, -13.54, 26.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.3, -10.43, -0.73, 2, 0)
	MovementLoopAddLocation(NPC, -28.7, -10.58, -9.61, 2, 0)
	MovementLoopAddLocation(NPC, -33.21, -11.07, -19.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.2, -13.29, -34.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.38, -12.54, -33.76, 2, 0)
	MovementLoopAddLocation(NPC, -23.76, -12.36, -31.61, 2, 0)
	MovementLoopAddLocation(NPC, -20.59, -12.3, -28.41, 2, 0)
	MovementLoopAddLocation(NPC, -18.02, -11.81, -24.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.85, -11.77, -18.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.03, -10.25, -45.21, 2, 0)
	MovementLoopAddLocation(NPC, -53.02, -10.64, -50.22, 2, 0)
	MovementLoopAddLocation(NPC, -57.48, -10.98, -52.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.48, -10.97, -52.13, 2, 0)
	MovementLoopAddLocation(NPC, -34.14, -10.98, -49.26, 2, 0)
end


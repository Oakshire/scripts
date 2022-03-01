--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425670.lua
	Script Purpose	:	Waypoint Path for ashoalglider425670.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:13 
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
	MovementLoopAddLocation(NPC, -13.01, -11.14, -18.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.92, -11.92, -28.35, 2, 0)
	MovementLoopAddLocation(NPC, -43.32, -11.79, -35.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.85, -10.7, -40.7, 2, 0)
	MovementLoopAddLocation(NPC, -58.07, -10.7, -46.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -69.83, -10.7, -34.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -61.74, -10.7, -32.48, 2, 0)
	MovementLoopAddLocation(NPC, -36.3, -10.7, -31.44, 2, 0)
	MovementLoopAddLocation(NPC, -21.32, -10.7, -28.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.7, -11.15, -17.32, 2, 0)
	MovementLoopAddLocation(NPC, -23.89, -11.12, -6.24, 2, 0)
	MovementLoopAddLocation(NPC, -22.63, -12.43, 2.32, 2, 0)
	MovementLoopAddLocation(NPC, -22.78, -13.54, 10.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.42, -11.83, 12.19, 2, 0)
	MovementLoopAddLocation(NPC, -36.16, -11.48, 14.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.98, -11.36, 6.12, 2, 0)
	MovementLoopAddLocation(NPC, -20.45, -11.49, -11.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.53, -10.7, -9.45, 2, 0)
	MovementLoopAddLocation(NPC, -52, -10.7, 0.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.5, -10.7, 6.43, 2, 0)
	MovementLoopAddLocation(NPC, -50.05, -10.7, 13.52, 2, 0)
	MovementLoopAddLocation(NPC, -47.27, -11.12, 22.97, 2, 0)
	MovementLoopAddLocation(NPC, -44.07, -11.67, 29.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.03, -10.89, 24.42, 2, 0)
	MovementLoopAddLocation(NPC, -50.96, -10.7, 10.41, 2, 0)
	MovementLoopAddLocation(NPC, -52.11, -10.7, 3.2, 2, 0)
	MovementLoopAddLocation(NPC, -59.78, -10.7, -2.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.97, -10.7, -7.09, 2, 0)
	MovementLoopAddLocation(NPC, -33.86, -10.7, -11.4, 2, 0)
	MovementLoopAddLocation(NPC, -26.33, -11.11, -14.57, 2, 0)
end

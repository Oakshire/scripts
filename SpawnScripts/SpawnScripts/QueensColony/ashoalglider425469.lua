--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425469.lua
	Script Purpose	:	Waypoint Path for ashoalglider425469.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:18:15 
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
	MovementLoopAddLocation(NPC, -34.37, -10.7, -14.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.65, -10.7, -4.99, 2, 0)
	MovementLoopAddLocation(NPC, -28.24, -11.18, 4.83, 2, 0)
	MovementLoopAddLocation(NPC, -29.15, -11.2, 27.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.54, -11.64, -2.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.59, -11.52, -8.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.46, -11.81, -9.79, 2, 0)
	MovementLoopAddLocation(NPC, -1.89, -12.48, -18.80, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.81, -11.78, -14.09, 2, 0)
	MovementLoopAddLocation(NPC, -25.95, -10.99, -17.34, 2, 0)
	MovementLoopAddLocation(NPC, -40.43, -10.7, -24.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.92, -10.7, -21.36, 2, 0)
	MovementLoopAddLocation(NPC, -34.73, -10.7, -13.15, 2, 0)
	MovementLoopAddLocation(NPC, -28.95, -10.7, -1.37, 2, 0)
	MovementLoopAddLocation(NPC, -23.16, -13.2, 12.69, 2, 0)
	MovementLoopAddLocation(NPC, -22.5, -13.35, 21.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.36, -10.6, 2.07, 2, 0)
	MovementLoopAddLocation(NPC, -28.8, -10.7, -0.62, 2, 0)
	MovementLoopAddLocation(NPC, -33.28, -10.7, -10.57, 2, 0)
	MovementLoopAddLocation(NPC, -34.48, -10.7, -14.13, 2, 0)
	MovementLoopAddLocation(NPC, -36.75, -10.61, -17.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.24, -10.5, -20.27, 2, 0)
	MovementLoopAddLocation(NPC, -52.29, -10.5, -29.07, 2, 0)
	MovementLoopAddLocation(NPC, -63.36, -10.7, -39.27, 2, 0)
	MovementLoopAddLocation(NPC, -68.04, -10.7, -46.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -53.96, -10.7, -43.19, 2, 0)
	MovementLoopAddLocation(NPC, -46.32, -10.7, -37.04, 2, 0)
	MovementLoopAddLocation(NPC, -42.33, -10.7, -29.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.13, -11.09, -18.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.92, -10.7, -2.15, 2, 0)
	MovementLoopAddLocation(NPC, -25.93, -11.63, 4.05, 2, 0)
	MovementLoopAddLocation(NPC, -28.13, -12.17, 10.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.73, -11.2, -0.59, 2, 0)
	MovementLoopAddLocation(NPC, -23.28, -11.06, -15.16, 2, 0)
	MovementLoopAddLocation(NPC, -20.4, -11.29, -21.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.05, -11.01, -17.46, 2, 0)
end


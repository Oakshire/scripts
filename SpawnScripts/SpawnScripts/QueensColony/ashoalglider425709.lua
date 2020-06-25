--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425709.lua
	Script Purpose	:	Waypoint Path for ashoalglider425709.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:32 
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
	MovementLoopAddLocation(NPC, -38.07, -11.56, -24.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.53, -11.39, -28.53, 2, 0)
	MovementLoopAddLocation(NPC, -16.62, -11.54, -39.63, 2, 0)
	MovementLoopAddLocation(NPC, -7.93, -11.51, -44.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.99, -11.88, -42.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.93, -11.13, -33.27, 2, 0)
	MovementLoopAddLocation(NPC, -13.21, -11.39, -27.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.11, -11.48, -14.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.22, -11.1, -18.72, 2, 0)
	MovementLoopAddLocation(NPC, -24.89, -11, -23.28, 2, 0)
	MovementLoopAddLocation(NPC, -25.3, -12.29, -31.82, 2, 0)
	MovementLoopAddLocation(NPC, -28.44, -12.56, -37.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.01, -11.43, -20.98, 2, 0)
	MovementLoopAddLocation(NPC, -25.45, -11.18, -16.68, 2, 0)
	MovementLoopAddLocation(NPC, -28.19, -10.7, -6.23, 2, 0)
	MovementLoopAddLocation(NPC, -32.19, -10.7, 6.44, 2, 0)
	MovementLoopAddLocation(NPC, -35.99, -11.69, 25.5, 2, 0)
	MovementLoopAddLocation(NPC, -39.36, -12.06, 32.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.79, -11.99, 25.68, 2, 0)
	MovementLoopAddLocation(NPC, -36.78, -11.93, 15.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.33, -10.96, 2.81, 2, 0)
	MovementLoopAddLocation(NPC, -22.93, -10.98, -4.02, 2, 0)
	MovementLoopAddLocation(NPC, -21.42, -11.45, -7.84, 2, 0)
	MovementLoopAddLocation(NPC, -15.43, -11.82, -13.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.97, -11.73, 4.06, 2, 0)
	MovementLoopAddLocation(NPC, -25.14, -12.32, 10.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.71, -10.7, 0.92, 2, 0)
	MovementLoopAddLocation(NPC, -31.97, -10.7, -8.42, 2, 0)
	MovementLoopAddLocation(NPC, -33.59, -10.7, -15.48, 2, 0)
	MovementLoopAddLocation(NPC, -36.99, -11.4, -22.66, 2, 0)
end


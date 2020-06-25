--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425577.lua
	Script Purpose	:	Waypoint Path for ashoalglider425577.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:53:20 
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
	MovementLoopAddLocation(NPC, -40.13, -13.33, 23.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.53, -10.7, 12.44, 2, 0)
	MovementLoopAddLocation(NPC, -32.43, -10.7, 5.38, 2, 0)
	MovementLoopAddLocation(NPC, -24.07, -10.7, -7.97, 2, 0)
	MovementLoopAddLocation(NPC, -11.92, -11.4, -22.59, 2, 0)
	MovementLoopAddLocation(NPC, -3.07, -11.6, -29.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.08, -11.49, -24.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.22, -11.32, -15.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.24, -11.32, -16.45, 2, 0)
	MovementLoopAddLocation(NPC, -17.33, -11.39, -17.29, 2, 0)
	MovementLoopAddLocation(NPC, -20.58, -11.57, -18.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.03, -11.58, -27.91, 2, 0)
	MovementLoopAddLocation(NPC, -31.97, -11.21, -42.81, 2, 0)
	MovementLoopAddLocation(NPC, -33.24, -10.77, -48.95, 2, 0)
	MovementLoopAddLocation(NPC, -34.92, -10.7, -53.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.24, -11.36, -32.2, 2, 0)
	MovementLoopAddLocation(NPC, -26.77, -11.39, -25.73, 2, 0)
	MovementLoopAddLocation(NPC, -23.1, -11.54, -2.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.46, -11.54, 1.97, 2, 0)
	MovementLoopAddLocation(NPC, -27.96, -11.58, 8.01, 2, 0)
	MovementLoopAddLocation(NPC, -35.53, -11.95, 15.05, 2, 0)
	MovementLoopAddLocation(NPC, -38.33, -12.66, 18.51, 2, 0)
end


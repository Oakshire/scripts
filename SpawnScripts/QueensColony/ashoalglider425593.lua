--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425593.lua
	Script Purpose	:	Waypoint Path for ashoalglider425593.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:27:06 
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
	MovementLoopAddLocation(NPC, -25.88, -10.7, -80.45, 2, 4)
	MovementLoopAddLocation(NPC, -60.2, -10.7, -50.88, 2, 4)
	MovementLoopAddLocation(NPC, -53.43, -10.7, -36.01, 2, 0)
	MovementLoopAddLocation(NPC, -40.42, -10.7, 7.48, 2, 0)
	MovementLoopAddLocation(NPC, -38.84, -12.63, 18.64, 2, 0)
	MovementLoopAddLocation(NPC, -36.07, -13.07, 26.7, 2, 4)
	MovementLoopAddLocation(NPC, -52.54, -10.7, 26.82, 2, 4)
	MovementLoopAddLocation(NPC, -55.18, -10.7, 23.28, 2, 0)
	MovementLoopAddLocation(NPC, -64.76, -10.7, 14.7, 2, 0)
	MovementLoopAddLocation(NPC, -73.19, -10.7, 7.99, 2, 0)
	MovementLoopAddLocation(NPC, -80.21, -10.7, 3.9, 2, 0)
	MovementLoopAddLocation(NPC, -92.1, -11.45, -12.01, 2, 4)
	MovementLoopAddLocation(NPC, -87.13, -11.54, -18.28, 2, 4)
	MovementLoopAddLocation(NPC, -90.85, -10.7, -5.3, 2, 0)
	MovementLoopAddLocation(NPC, -95.21, -10.7, 1.82, 2, 4)
	MovementLoopAddLocation(NPC, -83.87, -10.7, -11.81, 2, 0)
	MovementLoopAddLocation(NPC, -73.15, -10.7, -18.85, 2, 0)
	MovementLoopAddLocation(NPC, -46.17, -10.7, -53.38, 2, 0)
	MovementLoopAddLocation(NPC, -40.21, -10.7, -57.27, 2, 4)
	MovementLoopAddLocation(NPC, -53.26, -10.7, -57.38, 2, 0)
	MovementLoopAddLocation(NPC, -60.81, -10.7, -54.64, 2, 0)
	MovementLoopAddLocation(NPC, -68.81, -10.7, -56.11, 2, 4)
	MovementLoopAddLocation(NPC, -62.91, -11.44, -55.24, 2, 0)
	MovementLoopAddLocation(NPC, -55.81, -11.05, -52.88, 2, 0)
	MovementLoopAddLocation(NPC, -37.24, -10.7, -50.67, 2, 4)
	MovementLoopAddLocation(NPC, -2.65, -11.55, -48, 2, 4)
	MovementLoopAddLocation(NPC, -5.88, -11.05, -55.16, 2, 0)
	MovementLoopAddLocation(NPC, -11.14, -10.7, -62.49, 2, 0)
	MovementLoopAddLocation(NPC, -20.65, -10.7, -74.18, 2, 0)
end


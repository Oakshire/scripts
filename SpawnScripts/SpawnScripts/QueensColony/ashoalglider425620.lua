--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425620.lua
	Script Purpose	:	Waypoint Path for ashoalglider425620.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:27 
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
	MovementLoopAddLocation(NPC, -95.37, -10.7, -5.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -78.72, -10.7, -4.16, 2, 0)
	MovementLoopAddLocation(NPC, -48.72, -10.7, 0.31, 2, 0)
	MovementLoopAddLocation(NPC, -35.67, -10.7, 1, 2, 0)
	MovementLoopAddLocation(NPC, -27.5, -10.62, 2.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.3, -10.7, -4.61, 2, 0)
	MovementLoopAddLocation(NPC, -24.08, -10.7, -40.06, 2, 0)
	MovementLoopAddLocation(NPC, -20.27, -10.7, -50.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.43, -10.7, -54.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.31, -10.7, -48.06, 2, 0)
	MovementLoopAddLocation(NPC, -35.97, -10.7, -12.26, 2, 0)
	MovementLoopAddLocation(NPC, -35.87, -10.7, -7.88, 2, 0)
	MovementLoopAddLocation(NPC, -32.78, -10.7, 0.66, 2, 0)
	MovementLoopAddLocation(NPC, -28.7, -11.04, 7.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.79, -11.43, 11.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.03, -11.84, 10.77, 2, 0)
	MovementLoopAddLocation(NPC, -16.84, -12.18, 8.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.83, -11.97, 2.05, 2, 0)
	MovementLoopAddLocation(NPC, -16.16, -11.81, -9.53, 2, 0)
	MovementLoopAddLocation(NPC, -10.72, -11.42, -18.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.44, -10.99, -16.81, 2, 0)
	MovementLoopAddLocation(NPC, -66.71, -10.7, -9.1, 2, 0)
	MovementLoopAddLocation(NPC, -73.43, -10.7, -8.93, 2, 0)
end


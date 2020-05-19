--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427375.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427375.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:20 
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
	MovementLoopAddLocation(NPC, -11, -11.84, -28.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.87, -11.63, -43.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.34, -11.92, -45.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.62, -11.58, -41.01, 2, 0)
	MovementLoopAddLocation(NPC, -15.52, -11.63, -34.05, 2, 0)
	MovementLoopAddLocation(NPC, -15.58, -11.61, -29.87, 2, 0)
	MovementLoopAddLocation(NPC, -15.01, -12.21, -16.89, 2, 0)
	MovementLoopAddLocation(NPC, -16.42, -12.18, 3.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.27, -13.09, 9.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.24, -11.79, 2.26, 2, 0)
	MovementLoopAddLocation(NPC, -30.69, -10.7, -3.59, 2, 0)
	MovementLoopAddLocation(NPC, -36.04, -10.7, -7.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -59.32, -10.7, -9.26, 2, 0)
	MovementLoopAddLocation(NPC, -71.78, -10.7, -14.95, 2, 0)
	MovementLoopAddLocation(NPC, -85.55, -10.99, -17.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -74.17, -10.7, -19.15, 2, 0)
	MovementLoopAddLocation(NPC, -65.89, -10.59, -38.94, 2, 0)
	MovementLoopAddLocation(NPC, -55.13, -10.6, -46.37, 2, 0)
	MovementLoopAddLocation(NPC, -48.45, -10.7, -43.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.19, -11.72, -37.97, 2, 0)
	MovementLoopAddLocation(NPC, -27.33, -12.18, -34.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.47, -12.08, -32.81, 2, 0)
end



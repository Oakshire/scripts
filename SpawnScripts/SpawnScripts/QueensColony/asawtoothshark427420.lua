--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427420.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427420.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:53:04 
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
	MovementLoopAddLocation(NPC, -79.32, -10.6, -12.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -75.45, -10.5, -16.23, 2, 0)
	MovementLoopAddLocation(NPC, -62.31, -10.5, -22.04, 2, 0)
	MovementLoopAddLocation(NPC, -43.91, -10.6, -40.16, 2, 0)
	MovementLoopAddLocation(NPC, -37.31, -11.23, -43.71, 2, 0)
	MovementLoopAddLocation(NPC, -35.67, -11.65, -47.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.11, -11.36, -28.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.17, -10.6, -25.22, 2, 0)
	MovementLoopAddLocation(NPC, -40.15, -10.6, -15.61, 2, 0)
	MovementLoopAddLocation(NPC, -46.16, -10.6, -9.6, 2, 0)
	MovementLoopAddLocation(NPC, -54.02, -10.6, -2.22, 2, 0)
	MovementLoopAddLocation(NPC, -66.99, -10.6, 8.2, 2, 0)
	MovementLoopAddLocation(NPC, -72.05, -10.6, 14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -63.06, -10.6, 13.32, 2, 0)
	MovementLoopAddLocation(NPC, -33.72, -10.6, 6.68, 2, 0)
	MovementLoopAddLocation(NPC, -17.74, -12.7, 4.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.01, -11.65, -0.48, 2, 0)
	MovementLoopAddLocation(NPC, -27.11, -11.29, -2.3, 2, 0)
	MovementLoopAddLocation(NPC, -30.65, -10.62, -2.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.78, -10.6, -13.21, 2, 0)
	MovementLoopAddLocation(NPC, -25.94, -11.08, -35.87, 2, 0)
	MovementLoopAddLocation(NPC, -22.65, -12.8, -45.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.37, -11.8, -47.93, 2, 0)
	MovementLoopAddLocation(NPC, -18.82, -11.15, -50.05, 2, 0)
	MovementLoopAddLocation(NPC, -16.15, -10.6, -55.69, 2, 0)
	MovementLoopAddLocation(NPC, -10.44, -10.6, -63.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.39, -10.6, -54.2, 2, 0)
	MovementLoopAddLocation(NPC, -46.68, -10.6, -32.03, 2, 0)
	MovementLoopAddLocation(NPC, -53.04, -10.6, -24.31, 2, 0)
	MovementLoopAddLocation(NPC, -63.84, -10.6, -14.64, 2, 0)
	MovementLoopAddLocation(NPC, -67.69, -10.6, -8.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -72.94, -10.6, -3.83, 2, 0)
	MovementLoopAddLocation(NPC, -82.62, -11.05, 2.69, 2, math.random(10, 20))
end


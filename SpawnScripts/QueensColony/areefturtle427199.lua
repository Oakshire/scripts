--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427199.lua
	Script Purpose	:	Waypoint Path for areefturtle427199.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:53:42 
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
	MovementLoopAddLocation(NPC, -3.29, -11.84, -21.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.02, -12, -33.09, 2, 0)
	MovementLoopAddLocation(NPC, -16.01, -11.77, -43.49, 2, 0)
	MovementLoopAddLocation(NPC, -20.03, -10.97, -50.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.5, -11.29, -44.99, 2, 0)
	MovementLoopAddLocation(NPC, -38.86, -11.25, -35.06, 2, 0)
	MovementLoopAddLocation(NPC, -48.22, -10.39, -27.93, 2, 0)
	MovementLoopAddLocation(NPC, -63.78, -10.25, -10.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -69.76, -10.33, -3.9, 2, 0)
	MovementLoopAddLocation(NPC, -74.24, -10.38, 3.68, 2, 0)
	MovementLoopAddLocation(NPC, -79.71, -10.57, 7.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -72.97, -10.29, 2.87, 2, 0)
	MovementLoopAddLocation(NPC, -66.18, -10.22, -7.17, 2, 0)
	MovementLoopAddLocation(NPC, -59.88, -10.38, -15.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -62.37, -10.2, -13.79, 2, 0)
	MovementLoopAddLocation(NPC, -77.56, -10.4, 1.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -75.13, -10.46, -0.26, 2, 0)
	MovementLoopAddLocation(NPC, -70.99, -10.2, 0.01, 2, 0)
	MovementLoopAddLocation(NPC, -60.69, -10.23, -5.52, 2, 0)
	MovementLoopAddLocation(NPC, -44, -10.45, -10.24, 2, 0)
	MovementLoopAddLocation(NPC, -23.38, -11.53, -18.32, 2, math.random(10, 20))
end



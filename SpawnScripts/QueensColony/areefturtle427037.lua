--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427037.lua
	Script Purpose	:	Waypoint Path for areefturtle427037.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:16:02 
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
	MovementLoopAddLocation(NPC, -12.97, -11.72, -21.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.44, -12.13, -21.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.39, -11.53, -35.02, 2, 0)
	MovementLoopAddLocation(NPC, -8.06, -11.6, -40.23, 2, 0)
	MovementLoopAddLocation(NPC, -12.84, -11.43, -45.78, 2, 0)
	MovementLoopAddLocation(NPC, -19.95, -11.66, -47.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.74, -11.13, -52.1, 2, 0)
	MovementLoopAddLocation(NPC, -8.39, -11.18, -56.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.49, -10.97, -50.45, 2, 0)
	MovementLoopAddLocation(NPC, -16.25, -11.16, -47.52, 2, 0)
	MovementLoopAddLocation(NPC, -16.88, -11.29, -41.15, 2, 0)
	MovementLoopAddLocation(NPC, -14.59, -12.25, -18.28, 2, 0)
	MovementLoopAddLocation(NPC, -13, -12.68, -14.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.79, -12.2, -13.52, 2, 0)
	MovementLoopAddLocation(NPC, -20.72, -11.89, -12.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.37, -11.52, -16.8, 2, 0)
	MovementLoopAddLocation(NPC, -26.76, -11.55, -19.67, 2, 0)
	MovementLoopAddLocation(NPC, -33.5, -11.61, -25.57, 2, 0)
	MovementLoopAddLocation(NPC, -35.38, -11.35, -31.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.27, -11.3, -31.3, 2, math.random(10, 20))
end


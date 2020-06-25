--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427039.lua
	Script Purpose	:	Waypoint Path for areefturtle427039.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:05 
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
	MovementLoopAddLocation(NPC, -5.63, -11.75, -47.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.63, -11.76, -40.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.81, -11.38, -18.88, 2, 0)
	MovementLoopAddLocation(NPC, -17.83, -11.51, -14.89, 2, 0)
	MovementLoopAddLocation(NPC, -20.87, -11.72, -11.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.77, -11.31, -12.75, 2, 0)
	MovementLoopAddLocation(NPC, -39.1, -10.2, -12.67, 2, 0)
	MovementLoopAddLocation(NPC, -46.12, -10.2, -15.11, 2, 0)
	MovementLoopAddLocation(NPC, -56.44, -11.03, -14.49, 2, 0)
	MovementLoopAddLocation(NPC, -60.07, -10.65, -14.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.53, -10.58, -5.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.84, -10.14, -6.34, 2, 0)
	MovementLoopAddLocation(NPC, -32.89, -10.2, -6.03, 2, 0)
	MovementLoopAddLocation(NPC, -13.52, -11.17, -7.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.38, -11.23, 1.47, 2, 0)
	MovementLoopAddLocation(NPC, -35.08, -10.31, 6.64, 2, 0)
	MovementLoopAddLocation(NPC, -37.95, -10.54, 9.18, 2, 0)
	MovementLoopAddLocation(NPC, -41.35, -10.39, 10.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.17, -10.17, 5.22, 2, 0)
	MovementLoopAddLocation(NPC, -39.97, -10.2, -0.51, 2, 0)
	MovementLoopAddLocation(NPC, -36.56, -10.2, -12.54, 2, 0)
	MovementLoopAddLocation(NPC, -33.64, -10.37, -31.69, 2, 0)
	MovementLoopAddLocation(NPC, -31.05, -11.52, -42.86, 2, 0)
	MovementLoopAddLocation(NPC, -28.56, -11.45, -46.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.63, -11.53, -47.5, 2, 0)
end


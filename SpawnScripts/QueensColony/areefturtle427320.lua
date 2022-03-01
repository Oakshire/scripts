--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427320.lua
	Script Purpose	:	Waypoint Path for areefturtle427320.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:27:32 
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
	MovementLoopAddLocation(NPC, -79.83, -10.34, -5.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.04, -10.2, -19.77, 2, 0)
	MovementLoopAddLocation(NPC, -21.47, -10.33, -41.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.29, -10.98, -44.05, 2, 0)
	MovementLoopAddLocation(NPC, -12.79, -11.09, -50.32, 2, 0)
	MovementLoopAddLocation(NPC, -8.06, -10.54, -53.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.35, -11.45, -53.12, 2, 0)
	MovementLoopAddLocation(NPC, -5.58, -11.84, -50.39, 2, 0)
	MovementLoopAddLocation(NPC, -5.76, -12.28, -46.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.98, -12.03, -53.49, 2, 0)
	MovementLoopAddLocation(NPC, -8.44, -11.81, -56.83, 2, 0)
	MovementLoopAddLocation(NPC, -11.35, -11.71, -57.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.44, -11.38, -53.8, 2, 0)
	MovementLoopAddLocation(NPC, -19.59, -11.45, -44.58, 2, 0)
	MovementLoopAddLocation(NPC, -24.15, -12.28, -39.59, 2, 0)
	MovementLoopAddLocation(NPC, -25.85, -12.42, -36.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.97, -12.13, -25.68, 2, 0)
	MovementLoopAddLocation(NPC, -26.82, -11.54, -19.74, 2, 0)
	MovementLoopAddLocation(NPC, -31.78, -10.49, -11.44, 2, 0)
	MovementLoopAddLocation(NPC, -33.49, -10.27, 0.4, 2, 0)
	MovementLoopAddLocation(NPC, -42.63, -11.5, 27.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.73, -11.11, 19.8, 2, 0)
	MovementLoopAddLocation(NPC, -45.85, -10.2, 8.68, 2, 0)
	MovementLoopAddLocation(NPC, -50.37, -10.65, -9.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -70.48, -10.51, -9.39, 2, 0)
end



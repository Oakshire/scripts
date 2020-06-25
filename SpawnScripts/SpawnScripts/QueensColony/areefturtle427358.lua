--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427358.lua
	Script Purpose	:	Waypoint Path for areefturtle427358.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:11 
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
	MovementLoopAddLocation(NPC, -30.46, -10.96, -2.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.95, -10.56, 1.33, 2, 0)
	MovementLoopAddLocation(NPC, -33.32, -12.18, 17.16, 2, 0)
	MovementLoopAddLocation(NPC, -34.27, -13.74, 23.32, 2, 0)
	MovementLoopAddLocation(NPC, -35.98, -14.28, 29.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.19, -14.31, 27.57, 2, 0)
	MovementLoopAddLocation(NPC, -41.04, -13.2, 28.9, 2, 0)
	MovementLoopAddLocation(NPC, -42.36, -12.23, 32.51, 2, 0)
	MovementLoopAddLocation(NPC, -41.82, -11.94, 36.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.78, -12.17, 31.16, 2, 0)
	MovementLoopAddLocation(NPC, -36.5, -12.26, 28.18, 2, 0)
	MovementLoopAddLocation(NPC, -32.6, -12.42, 23.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.27, -11.54, 15.47, 2, 0)
	MovementLoopAddLocation(NPC, -26.43, -11.5, 12.85, 2, 0)
	MovementLoopAddLocation(NPC, -24.63, -11.47, 9.25, 2, 0)
	MovementLoopAddLocation(NPC, -17.78, -12.07, -0.12, 2, 0)
	MovementLoopAddLocation(NPC, -12.85, -12.3, -1.74, 2, 0)
	MovementLoopAddLocation(NPC, -9.48, -12.92, -12.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.37, -12.39, -17.55, 2, 0)
	MovementLoopAddLocation(NPC, -5.57, -11.93, -24.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.34, -10.44, -8.16, 2, 0)
end


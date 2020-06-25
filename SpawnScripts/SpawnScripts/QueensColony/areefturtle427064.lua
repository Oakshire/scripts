--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427064.lua
	Script Purpose	:	Waypoint Path for areefturtle427064.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:17 
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
	MovementLoopAddLocation(NPC, 51.79, -10.69, -61.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.09, -10.69, -57.84, 2, 0)
	MovementLoopAddLocation(NPC, 69.71, -10.74, -44.18, 2, 0)
	MovementLoopAddLocation(NPC, 90.37, -11.32, -24.96, 2, 0)
	MovementLoopAddLocation(NPC, 93.32, -11.78, -16.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 91.57, -11.79, -20.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 98.71, -12.63, -23.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.96, -12.48, -32.38, 2, 0)
	MovementLoopAddLocation(NPC, 91.64, -12.77, -42.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.27, -12.36, -44.01, 2, 0)
	MovementLoopAddLocation(NPC, 72.5, -11.89, -44.88, 2, 0)
	MovementLoopAddLocation(NPC, 67.86, -11.29, -45.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.63, -11.03, -52.28, 2, 0)
	MovementLoopAddLocation(NPC, 60.96, -11.04, -54.48, 2, 0)
	MovementLoopAddLocation(NPC, 57.96, -11.08, -56.48, 2, 0)
end


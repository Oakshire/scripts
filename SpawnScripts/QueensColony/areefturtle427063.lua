--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427063.lua
	Script Purpose	:	Waypoint Path for areefturtle427063.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:16:59 
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
	MovementLoopAddLocation(NPC, 87.61, -12.69, -33.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.24, -12.49, -40.78, 2, 0)
	MovementLoopAddLocation(NPC, 68.33, -11.58, -47.81, 2, 0)
	MovementLoopAddLocation(NPC, 61.46, -11.17, -51.42, 2, 0)
	MovementLoopAddLocation(NPC, 55.45, -10.95, -52.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.24, -11.07, -45.85, 2, 0)
	MovementLoopAddLocation(NPC, 75.55, -11.02, -38.6, 2, 0)
	MovementLoopAddLocation(NPC, 79.24, -11.25, -35.84, 2, 0)
	MovementLoopAddLocation(NPC, 87.73, -12.02, -31.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 93.72, -11.86, -44.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.93, -11.96, -40.78, 2, 0)
	MovementLoopAddLocation(NPC, 101.92, -11.96, -37.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.23, -12.84, -22.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.95, -12.38, -24.68, 2, 0)
	MovementLoopAddLocation(NPC, 95.83, -12.03, -30.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.26, -12.06, -31.82, 2, 0)
	MovementLoopAddLocation(NPC, 77.11, -11.76, -32.33, 2, math.random(10, 20))
end



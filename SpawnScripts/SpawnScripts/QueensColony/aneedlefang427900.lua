--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427900.lua
	Script Purpose	:	Waypoint Path for aneedlefang427900.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:17 
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
	MovementLoopAddLocation(NPC, -10.48, -12.48, -15.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.44, -11.11, -8.9, 2, 0)
	MovementLoopAddLocation(NPC, -23.24, -10.98, -3.4, 2, 0)
	MovementLoopAddLocation(NPC, -30.91, -11.05, 1.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.57, -11.6, -36.02, 2, 0)
	MovementLoopAddLocation(NPC, -20.44, -11.53, -44.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.63, -11.03, -33.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.44, -11.17, -38.96, 2, 0)
	MovementLoopAddLocation(NPC, -11.21, -11.62, -41.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.35, -10.99, -49.07, 2, 0)
	MovementLoopAddLocation(NPC, -9.08, -11.17, -62.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.05, -10.99, -55.42, 2, 0)
	MovementLoopAddLocation(NPC, -7.58, -11.09, -49.31, 2, 0)
	MovementLoopAddLocation(NPC, -4.02, -11.85, -44.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.21, -10.98, -32.31, 2, 0)
	MovementLoopAddLocation(NPC, -7.82, -12.36, -19.57, 2, 0)
end


--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer428846.lua
	Script Purpose	:	Waypoint Path for amorakdevourer428846.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:08:43 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 257.27, -4.06, 43, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 256.11, -4.05, 47.48, 2, 0)
	MovementLoopAddLocation(NPC, 261.28, -4.56, 59.62, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 262.32, -5.79, 64.5, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 268.45, -4.3, 57.34, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 259.92, -4.29, 40.06, 2, 0)
	MovementLoopAddLocation(NPC, 253.65, -4.28, 34.95, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 263.64, -4.06, 43.45, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 264.23, -4.47, 48.78, 2, 0)
	MovementLoopAddLocation(NPC, 264.17, -4.57, 58.76, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 263.53, -4.56, 55.98, 2, 0)
	MovementLoopAddLocation(NPC, 260.91, -4.09, 50.42, 2, 0)
	MovementLoopAddLocation(NPC, 260.27, -4.3, 40.68, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 261.07, -4.1, 50.51, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 258.86, -3.96, 47.56, 2, 0)
end
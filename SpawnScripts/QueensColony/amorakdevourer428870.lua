--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer428870.lua
	Script Purpose	:	Waypoint Path for amorakdevourer428870.lua
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
	MovementLoopAddLocation(NPC, 262.03, -4.29, 51.77, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 259.54, -4.39, 54.16, 2, 0)
	MovementLoopAddLocation(NPC, 259.27, -4.54, 61.86, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 262.43, -4.4, 40.1, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 259.34, -4.16, 34.82, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 262.27, -4.23, 47.82, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 260.45, -3.97, 48.73, 2, 0)
	MovementLoopAddLocation(NPC, 257.89, -4.12, 55.24, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 261.48, -4.11, 48.32, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 259.42, -4.22, 51.5, 2, 0)
	MovementLoopAddLocation(NPC, 259.31, -5.61, 65.43, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 258.73, -6.31, 69.35, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 259.26, -4.34, 53.52, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 263.75, -4.45, 51.58, 2, 0)
	MovementLoopAddLocation(NPC, 267.28, -4.16, 46.67, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 262.24, -4.59, 61.88, 2, math.random(14, 25))
end
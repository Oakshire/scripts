--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer428881.lua
	Script Purpose	:	Waypoint Path for amorakdevourer428881.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:08:43 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 263.53, -4.15, 45.95, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 261.3, -4.35, 40.6, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 264.14, -4.45, 48.6, 2, 0)
	MovementLoopAddLocation(NPC, 264.2, -4.88, 62.62, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 266.32, -4.36, 58.49, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 263.5, -5.67, 64.27, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 264.09, -4.39, 48.06, 2, 0)
	MovementLoopAddLocation(NPC, 262.06, -4.11, 46.25, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 260.32, -4.43, 52.82, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 261.04, -4.05, 48.86, 2, 0)
	MovementLoopAddLocation(NPC, 265.31, -4.31, 47.13, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 266.31, -4.57, 55.67, 2, math.random(14, 25))
end

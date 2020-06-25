--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer428699.lua
	Script Purpose	:	Waypoint Path for amorakdevourer428699.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:08:43 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "difficulty", "2")        
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 264.28, -4.53, 49.72, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 263.98, -4.56, 55.56, 2, 0)
	MovementLoopAddLocation(NPC, 263.18, -4.56, 58.74, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 260.72, -4.39, 52.46, 2, 0)
	MovementLoopAddLocation(NPC, 256.37, -3.95, 44.22, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 258.12, -3.96, 49.49, 2, 0)
	MovementLoopAddLocation(NPC, 265.65, -4.54, 56.77, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 269.56, -4.41, 54.4, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 272.08, -4.11, 48.89, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 269.31, -4.49, 51.62, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 265.11, -4.51, 57.67, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 259.03, -5.86, 66.77, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 263.67, -4.56, 57.86, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 264.28, -4.56, 56.19, 2, 0)
	MovementLoopAddLocation(NPC, 268.36, -4.53, 51.36, 2, math.random(14, 25))
end
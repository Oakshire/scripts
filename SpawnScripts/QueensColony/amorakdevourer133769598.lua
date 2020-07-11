--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769598.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769598.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:16:45 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "4") 
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 72.5, -0.65, -190.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 74.89, -0.59, -184.12, 2, 0)
	MovementLoopAddLocation(NPC, 75.78, -0.07, -179.08, 2, 0)
	MovementLoopAddLocation(NPC, 87.35, 0.03, -161.95, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 88.51, -0.09, -164.45, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 74.31, -2.59, -156.96, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 99.62, -1.04, -161.79, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 73.85, -2.59, -155.17, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 80.82, -0.03, -160.67, 2, 0)
	MovementLoopAddLocation(NPC, 93.05, -0.49, -175.55, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 86.25, -1, -152.35, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 73.5, 0.3, -175.56, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 79.31, 0.15, -175.83, 2, 0)
	MovementLoopAddLocation(NPC, 88.18, -0.48, -180.25, 2, 0)
	MovementLoopAddLocation(NPC, 94.44, -0.23, -190, 2, math.random(14, 25))
end
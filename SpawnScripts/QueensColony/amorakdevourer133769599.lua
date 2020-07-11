--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769599.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769599.lua
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
	MovementLoopAddLocation(NPC, 74.68, -0.01, -178.46, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 79.01, 0.24, -175.25, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 79.1, -0.44, -200.1, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 90.66, -0.48, -192.48, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 86.87, -0.47, -193.23, 2, 0)
	MovementLoopAddLocation(NPC, 71.23, -0.47, -195.72, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 87.79, -0.02, -169.01, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 89.58, -0.2, -161.53, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 88.56, -0.55, -155.34, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 97.1, -0.34, -177.08, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 84.32, -0.27, -186.08, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 79.04, -0.59, -186.48, 2, 0)
	MovementLoopAddLocation(NPC, 75.2, -0.42, -182.51, 2, 0)
end
--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769616.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769616.lua
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
	MovementLoopAddLocation(NPC, 144.27, 0.47, -184.21, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 141.61, -0.48, -194.32, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 134.98, -0.28, -179.72, 2, 0)
	MovementLoopAddLocation(NPC, 130.7, -0.44, -173.88, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 138.9, 0.49, -179.75, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 132.32, -0.45, -186.07, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 142.01, -0.48, -195.23, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 140.89, 0.17, -184.61, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 147.91, -0.13, -190.35, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 133.91, -0.45, -179.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 148.38, -0.5, -193.25, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 137.95, -0.47, -186.29, 2, math.random(14, 25))
end
--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769615.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769615.lua
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
	MovementLoopAddLocation(NPC, 161.27, -0.55, -194.19, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 153.23, -0.52, -189.05, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 155.68, -0.53, -197.14, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 157.57, -0.54, -198.42, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 143.61, 0.6, -180.46, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 148.66, 0.54, -184.72, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 135.88, -0.07, -175.95, 2, 0)
	MovementLoopAddLocation(NPC, 130.61, -0.01, -171.53, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 147.41, -0.5, -193.11, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 149.5, 0.24, -187.21, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 143.41, 0.29, -186.2, 2, math.random(14, 25))
end
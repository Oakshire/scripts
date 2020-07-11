--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769523.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769523.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:14:22 
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
	MovementLoopAddLocation(NPC, 241.58, -0.9, -124.77, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 225.71, -0.8, -113.82, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 237.62, -0.85, -139.89, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 246.69, -0.84, -136.02, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 241.68, -0.89, -133.5, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 239.33, -0.85, -131.11, 2, 0)
	MovementLoopAddLocation(NPC, 228.68, -0.92, -113.77, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 237.7, -0.84, -147.29, 2, math.random(14, 25))
end
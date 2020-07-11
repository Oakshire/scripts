--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769577.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769577.lua
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
	MovementLoopAddLocation(NPC, 153.17, -0.52, -211.63, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 170.26, -0.58, -211.45, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 161.79, -0.54, -219.14, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 164.58, -0.75, -207.51, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 128.84, -0.78, -218.46, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 168.92, -0.58, -207.5, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 166.08, -0.57, -216.36, 2, math.random(14, 25))
end
--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769601.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769601.lua
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
	MovementLoopAddLocation(NPC, 74.32, -0.32, -195.62, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 83.08, -0.26, -192.47, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 79.07, -0.1, -178.58, 2, 0)
	MovementLoopAddLocation(NPC, 69.21, -2.36, -156.98, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 72.66, -2.58, -156.56, 2, 0)
	MovementLoopAddLocation(NPC, 110.41, -0.37, -166.36, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 95.1, -0.44, -161.68, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 79.98, -1.51, -150.64, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 91.93, -0.3, -160.63, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 86.35, 0.06, -169.55, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 90.67, -0.48, -189.44, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 87.53, -0.28, -175.71, 2, math.random(14, 25))
end
--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769586.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769586.lua
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
	MovementLoopAddLocation(NPC, 95.13, -1.03, -144.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 95.9, -0.62, -159.33, 2, 0)
	MovementLoopAddLocation(NPC, 102.58, -0.34, -177.71, 2, 0)
	MovementLoopAddLocation(NPC, 104.58, 0.04, -182.39, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 99.78, -0.11, -181.81, 2, 0)
	MovementLoopAddLocation(NPC, 87.05, -0.28, -173.63, 2, 0)
	MovementLoopAddLocation(NPC, 72.51, -2.58, -158.72, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 74.42, 0.18, -176.6, 2, 0)
	MovementLoopAddLocation(NPC, 77.78, -0.67, -187.64, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 86.51, 0.11, -161.56, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 99.19, -1.37, -160.02, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 93.82, -0.32, -169.67, 2, math.random(14, 25))
end
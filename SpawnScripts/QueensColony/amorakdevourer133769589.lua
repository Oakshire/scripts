--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769589.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769589.lua
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
	MovementLoopAddLocation(NPC, 95.82, -0.36, -169.45, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 77.78, 0.12, -177.08, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 105.68, -0.35, -167.85, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 83.23, -0.99, -150.8, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 80.04, -0.11, -160.68, 2, 0)
	MovementLoopAddLocation(NPC, 78.63, 0.57, -169.99, 2, 0)
	MovementLoopAddLocation(NPC, 75.88, 0.05, -177.82, 2, 0)
	MovementLoopAddLocation(NPC, 74.65, -0.66, -189.69, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 75.45, -0.18, -180.12, 2, 0)
	MovementLoopAddLocation(NPC, 82.27, 0.06, -160.26, 2, math.random(14, 25))
end
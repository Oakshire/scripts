--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769588.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769588.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:16:45 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "4") 
        SpawnSet(NPC, "size", "28.8")
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 91.73, -0.3, -164.62, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 71.9, -2.58, -158.81, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 80.63, 0.28, -173.26, 2, 0)
	MovementLoopAddLocation(NPC, 83.84, -0.27, -177.4, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 102.48, -0.5, -175.64, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 75.39, -0.66, -189.43, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 105.79, -1.72, -158.57, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 97.1, -0.91, -159.91, 2, 0)
	MovementLoopAddLocation(NPC, 87.45, -0.11, -158.56, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 95.8, -0.6, -159.32, 2, 0)
	MovementLoopAddLocation(NPC, 103.71, -2.02, -153.77, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 80.91, -0.36, -181.79, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 77.64, -0.67, -185.13, 2, math.random(14, 25))
end
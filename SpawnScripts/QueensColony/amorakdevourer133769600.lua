--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769600.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769600.lua
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
	MovementLoopAddLocation(NPC, 69, -1.64, -169.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 70.3, -1.97, -166.51, 2, 0)
	MovementLoopAddLocation(NPC, 69.12, -2.57, -158.3, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 77.71, -0.46, -191.12, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 69.7, -0.64, -191.42, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 75.65, -0.23, -197.15, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 83.1, -0.27, -178.69, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 96.99, -0.69, -163.23, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 79.08, -0.07, -161.92, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 87.27, -0.47, -195.48, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 76.31, -0.48, -183.05, 2, 0)
end
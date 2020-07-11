--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769585.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769585.lua
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
	MovementLoopAddLocation(NPC, 94.1, -0.31, -163.23, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 77.89, -0.09, -162.92, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 97.46, -0.99, -158.93, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 80.98, -1.3, -150.73, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 72.13, 0.07, -172.24, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 80.16, -0.25, -180.5, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 99.37, -0.52, -173.88, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 80.74, -1.35, -150.47, 2, math.random(14, 25))
end
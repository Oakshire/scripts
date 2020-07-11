--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769590.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769590.lua
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
	MovementLoopAddLocation(NPC, 97.13, -0.32, -178.47, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 105.7, -2, -157.09, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 91.57, -1.02, -149.26, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 91.93, -0.83, -153.86, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 70.17, -2.57, -158.7, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 71.94, -2.58, -160.26, 2, 0)
	MovementLoopAddLocation(NPC, 91.89, -0.44, -191.21, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 93.88, -0.31, -158.7, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 87.36, -0.47, -187.79, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 82.47, -0.26, -183.8, 2, 0)
	MovementLoopAddLocation(NPC, 79.53, -0.25, -179.55, 2, 0)
	MovementLoopAddLocation(NPC, 75.1, 0.18, -176.53, 2, 0)
	MovementLoopAddLocation(NPC, 70.97, -0.08, -175.61, 2, math.random(14, 25))
end
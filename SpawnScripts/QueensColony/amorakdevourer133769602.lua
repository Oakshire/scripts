--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769602.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769602.lua
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
	MovementLoopAddLocation(NPC, 87.58, -0.47, -198.82, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 71.6, -0.29, -197.08, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 102.3, -0.53, -174.29, 2, 0)
	MovementLoopAddLocation(NPC, 107, -0.55, -174.31, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 89.61, -0.48, -181.7, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 72.43, 0.21, -174.16, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 80.96, -0.25, -192.63, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 76.87, -0.05, -164.25, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 71.35, -0.2, -180.45, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 95.41, -0.99, -146.13, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 85.44, -1, -150.86, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 96.53, -1.14, -152.34, 2, 0)
	MovementLoopAddLocation(NPC, 106.18, -1.56, -150.54, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 70.1, -1.34, -169.01, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 75.39, -0.23, -180.66, 2, 0)
end
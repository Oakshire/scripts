--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769541.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769541.lua
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
	MovementLoopAddLocation(NPC, 227.88, -0.8, -181.33, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 255.04, -1.26, -169.81, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 247.85, -0.46, -178.81, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 255.16, -1.19, -180.05, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 236.75, -0.68, -173.49, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 251.78, -0.99, -155.1, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 246.53, -0.88, -139.71, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 244.04, 0.22, -168.33, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 227.36, -0.8, -172.67, 2, 0)
	MovementLoopAddLocation(NPC, 219.33, -0.77, -173.39, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 233.32, -0.82, -160.44, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 254.41, -1.25, -167.4, 2, math.random(14, 25))
end


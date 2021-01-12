--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769540.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769540.lua
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
	MovementLoopAddLocation(NPC, 220.51, -0.77, -173.53, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 235.46, -0.69, -173.53, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 229.23, -0.89, -157.7, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 248.98, -0.86, -146.41, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 247.76, -0.49, -148.28, 2, 0)
	MovementLoopAddLocation(NPC, 232.68, -0.82, -164.32, 2, 0)
	MovementLoopAddLocation(NPC, 225.07, -0.79, -167.87, 2, 0)
	MovementLoopAddLocation(NPC, 223.11, -0.78, -170.24, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 217.71, -0.76, -174.21, 2, 0)
	MovementLoopAddLocation(NPC, 210.57, -0.74, -177.35, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 225.61, -0.79, -168.04, 2, 0)
	MovementLoopAddLocation(NPC, 244.13, 0.22, -161.64, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 247.9, -1, -141.2, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 248.11, -0.98, -144.98, 2, 0)
	MovementLoopAddLocation(NPC, 254.99, -1.18, -176.06, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 228.12, -0.8, -168.04, 2, 0)
	MovementLoopAddLocation(NPC, 222.73, -0.78, -167.11, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 215.05, -0.75, -173.58, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 248.97, -0.59, -172.25, 2, math.random(14, 25))
end


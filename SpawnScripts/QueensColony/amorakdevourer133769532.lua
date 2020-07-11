--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769532.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769532.lua
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
	MovementLoopAddLocation(NPC, 250.37, -0.84, -153.89, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 241.45, 0.12, -165.89, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 231.84, -0.82, -176.22, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 220.45, -0.77, -172.23, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 224.41, -0.79, -176.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 254.34, -1.22, -170.76, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 250.59, -0.87, -157.86, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 215.15, -0.75, -172.13, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 226.9, -0.8, -172.38, 2, 0)
	MovementLoopAddLocation(NPC, 250.44, -0.85, -166.98, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 255.33, -1.13, -175.91, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 235.52, -0.83, -164.35, 2, math.random(14, 25))
end



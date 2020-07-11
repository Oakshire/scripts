--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769556.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769556.lua
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
	MovementLoopAddLocation(NPC, 169.04, -0.58, -208.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 176.83, -0.6, -214.12, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 143.05, -0.83, -218.17, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 167.43, -0.65, -207.4, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 148.93, -0.5, -212.36, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 150.28, -0.9, -217.45, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 156.18, -0.53, -212.13, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 138.59, -0.8, -218.26, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 176.92, -0.6, -216.55, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 173.32, -0.59, -211.3, 2, math.random(14, 25))
end


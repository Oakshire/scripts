--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769576.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769576.lua
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
	MovementLoopAddLocation(NPC, 137.43, -0.88, -217.35, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 176.35, -0.6, -209.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 175.24, -0.6, -212.42, 2, 0)
	MovementLoopAddLocation(NPC, 172.83, -0.59, -215.84, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 164.39, -0.55, -219.4, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 153.32, -0.89, -218.18, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 157.35, -0.58, -214.31, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 173.3, -0.59, -210.31, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 171.17, -0.58, -210.42, 2, math.random(14, 25))
end
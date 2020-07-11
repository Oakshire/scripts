--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769554.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769554.lua
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
	MovementLoopAddLocation(NPC, 163.43, -0.55, -218.53, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 132.92, -0.55, -214.25, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 133.56, -0.84, -217.34, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 168.82, -0.57, -214.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 153.15, -0.52, -211.51, 2, 0)
	MovementLoopAddLocation(NPC, 143.14, -0.54, -209.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 149.23, -0.82, -216.58, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 145.83, -0.57, -209.6, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 154.7, -0.52, -212.97, 2, 0)
	MovementLoopAddLocation(NPC, 161.84, -0.55, -217.52, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 165.72, -0.56, -219.39, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 172.35, -0.59, -209.77, 2, math.random(14, 25))
end

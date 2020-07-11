--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769639.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769639.lua
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
	MovementLoopAddLocation(NPC, 198.11, -0.7, -149.6, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 216.27, -0.76, -148.09, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 205.35, -0.72, -151.92, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 210.69, -0.74, -152.03, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 193.7, -0.67, -171.19, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 196.56, -0.69, -161.11, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 215.72, -0.76, -146.36, 2, math.random(14, 25))
end
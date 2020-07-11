--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769542.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769542.lua
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
	MovementLoopAddLocation(NPC, 229.09, -0.81, -172.33, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 225.58, -0.79, -174.27, 2, 0)
	MovementLoopAddLocation(NPC, 215.4, -0.75, -177.57, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 234.36, -0.83, -149.94, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 255, -1.09, -162.05, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 249.15, -0.45, -167.24, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 244.09, -0.86, -183.85, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 225.49, -0.79, -172.18, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 244.29, 0.03, -172.85, 2, math.random(14, 25))
end


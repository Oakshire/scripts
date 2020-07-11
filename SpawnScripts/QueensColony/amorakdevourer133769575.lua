--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769575.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769575.lua
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
	MovementLoopAddLocation(NPC, 134.05, -0.45, -210.63, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 165.79, -0.56, -213.68, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 139.52, -0.79, -216.26, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 170.19, -0.58, -212.73, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 154.04, -0.52, -211.73, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 122.29, -0.4, -209.69, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 120.95, -0.83, -217.56, 2, math.random(14, 25))
end
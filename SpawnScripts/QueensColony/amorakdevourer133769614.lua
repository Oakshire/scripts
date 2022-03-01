--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769614.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769614.lua
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
	MovementLoopAddLocation(NPC, 131.28, -0.21, -173.18, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 139.2, 0.49, -177.97, 2, 0)
	MovementLoopAddLocation(NPC, 159.23, -0.54, -196.16, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 155.35, -0.53, -198.27, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 154.23, -0.53, -189.94, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 153.03, -0.52, -197.03, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 155.63, -0.53, -198.41, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 154.26, -0.52, -200.28, 2, math.random(14, 25))
end
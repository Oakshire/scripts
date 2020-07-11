--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769595.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769595.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:25:19 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 92.81, -0.36, -187.97, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 80.94, -0.13, -176.94, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 86.36, -0.47, -192.95, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 79.85, -0.44, -203.38, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 74.99, -0.11, -179.51, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 76.33, -0.33, -181.62, 2, 0)
	MovementLoopAddLocation(NPC, 79, -0.53, -183.45, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 76.23, -0.39, -182.15, 2, 0)
	MovementLoopAddLocation(NPC, 72.66, 0.15, -177.03, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 75.38, 0.13, -176.99, 2, 0)
	MovementLoopAddLocation(NPC, 83.54, -0.27, -181.12, 2, 0)
	MovementLoopAddLocation(NPC, 87.84, -0.47, -184.98, 2, math.random(14, 28))
end


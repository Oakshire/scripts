--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769607.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769607.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:29:25 
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
	MovementLoopAddLocation(NPC, 137.19, 0.24, -179.02, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 134.39, -0.45, -188.96, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 136.39, -0.46, -188.32, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 140.3, -0.47, -191.99, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 155.14, -0.53, -190.26, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 132.27, -0.45, -179.23, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 131.3, -0.44, -179.2, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 161.12, -0.55, -194.23, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 140.28, -0.19, -188.23, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 137.48, -0.46, -192.13, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 147.62, -0.5, -194.42, 2, math.random(14, 28))
end


--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769608.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769608.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:29:35 
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
	MovementLoopAddLocation(NPC, 146.33, 0.47, -183.14, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 147.96, 0.46, -186.01, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 135.29, -0.46, -190.09, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 146.16, -0.43, -193.22, 2, 0)
	MovementLoopAddLocation(NPC, 155.21, -0.53, -198.92, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 151.67, -0.52, -191.1, 2, 0)
	MovementLoopAddLocation(NPC, 151.32, -0.46, -188.28, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 148.31, 0.46, -186.06, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 143.82, -0.34, -192.85, 2, 0)
	MovementLoopAddLocation(NPC, 142.49, -0.48, -197.45, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 133.49, -0.19, -175.5, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 135.61, -0.19, -184.26, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 138.61, -0.36, -186.13, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 158.15, -0.54, -195.11, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 153.67, -0.52, -192.27, 2, math.random(14, 28))
end



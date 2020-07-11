--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769610.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769610.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:29:42 
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
	MovementLoopAddLocation(NPC, 142.98, -0.48, -196.71, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 137.3, 0.27, -180.3, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 135.35, -0.46, -188.05, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 142.39, 0.48, -183.18, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 149.22, -0.51, -196.16, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 145.33, -0.44, -193.23, 2, 0)
	MovementLoopAddLocation(NPC, 141.62, -0.48, -193.1, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 139.28, -0.47, -195.95, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 138.52, 0.49, -180.42, 2, math.random(14, 28))
end



--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769552.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769552.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:19:16 
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
	MovementLoopAddLocation(NPC, 168.92, -0.58, -209.18, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 167.55, -0.73, -206.47, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 138.86, -0.79, -216.22, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 171.55, -0.59, -209.46, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 161.72, -0.74, -206.43, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 130.06, -0.43, -211.14, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 133, -0.44, -211.31, 2, math.random(14, 28))
end

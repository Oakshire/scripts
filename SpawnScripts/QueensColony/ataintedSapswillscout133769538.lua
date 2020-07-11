--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769538.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769538.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:18:02 
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
	MovementLoopAddLocation(NPC, 237.82, -0.83, -185.17, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 235.33, -0.83, -155.31, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 222.82, -0.78, -169.88, 2, 0)
	MovementLoopAddLocation(NPC, 220.19, -0.77, -175.96, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 244.02, 0.22, -165.91, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 227.89, -0.8, -164.18, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 241.69, -0.22, -155.22, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 215.51, -0.75, -176.16, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 248.1, -0.42, -173.52, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 256.4, -0.99, -174.67, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 250.82, -0.92, -176.45, 2, 0)
end



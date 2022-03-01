--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769584.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769584.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:22:50 
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
	MovementLoopAddLocation(NPC, 94.95, -0.85, -153.97, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 72.42, 0.17, -172.43, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 97.12, -0.33, -177.13, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 93.87, -1.03, -144.87, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 69.13, -2.47, -166.1, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 80.07, -1.38, -155.51, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 94.88, -0.5, -170.97, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 73.52, -0.23, -169.46, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 75.75, 0.06, -177.74, 2, 0)
	MovementLoopAddLocation(NPC, 76.06, -0.28, -181.13, 2, 0)
	MovementLoopAddLocation(NPC, 84.26, -0.29, -203.45, 2, math.random(14, 28))
end



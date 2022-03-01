--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769596.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769596.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:25:23 
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
	MovementLoopAddLocation(NPC, 69.14, -0.63, -176.95, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 87.39, -1, -150.9, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 70.44, -2.57, -163.08, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 91.76, -0.3, -163.36, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 74.52, -0.23, -198.43, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 91.97, -1.02, -144.83, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 110.03, -0.37, -166.49, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 104.21, -0.34, -177.16, 2, 0)
	MovementLoopAddLocation(NPC, 100.74, 0.13, -182.86, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 91.17, -0.48, -192.29, 2, 0)
	MovementLoopAddLocation(NPC, 84.11, -0.46, -201.72, 2, math.random(14, 28))
end



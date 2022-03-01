--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769583.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769583.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:22:46 
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
	MovementLoopAddLocation(NPC, 96.08, -0.67, -161.9, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 86.44, -0.47, -198.35, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 92.81, -0.3, -164.96, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 78.75, -0.44, -201.9, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 91.83, -0.49, -181.67, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 96.27, -0.7, -157.32, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 94.05, -0.5, -176.38, 2, 0)
	MovementLoopAddLocation(NPC, 93.19, -0.36, -181.64, 2, 0)
	MovementLoopAddLocation(NPC, 93.94, -0.3, -184.76, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 92.87, -0.38, -181.8, 2, 0)
	MovementLoopAddLocation(NPC, 93.86, -0.5, -172.71, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 71.35, -0.61, -186.25, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 79.1, 0.57, -169.24, 2, 0)
	MovementLoopAddLocation(NPC, 79.95, 0.3, -164.69, 2, math.random(14, 28))
end



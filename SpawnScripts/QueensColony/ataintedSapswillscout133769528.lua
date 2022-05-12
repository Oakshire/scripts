--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769528.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769528.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:16:05 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    SpawnSet(NPC, "hp", 110)
    SpawnSet(NPC, "power", 55)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 255.17, -1.05, -164.41, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 232.94, -0.82, -173.62, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 236.45, -0.83, -182.66, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 231.11, -0.81, -181.39, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 239.08, -0.84, -182.7, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 229.26, -0.81, -164.36, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 253.6, -1.22, -182.77, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 226.76, -0.83, -161.54, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 230.52, -0.81, -157.58, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 232.99, -0.82, -153.91, 2, math.random(14, 28))
end

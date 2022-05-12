--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769535.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769535.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:17:53 
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
	MovementLoopAddLocation(NPC, 218.11, -0.76, -171.22, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 219.14, -0.77, -181.43, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 251.42, -0.99, -181.4, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 226.7, -0.8, -165.59, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 239.5, -0.02, -165.72, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 226.56, -0.79, -181.32, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 236.87, -0.37, -169.46, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 245.71, -0.86, -184.07, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 250.13, -0.9, -182.79, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 246.52, -0.87, -185.6, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 230.16, -0.81, -165.57, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 222.5, -0.78, -168.58, 2, math.random(14, 28))
end



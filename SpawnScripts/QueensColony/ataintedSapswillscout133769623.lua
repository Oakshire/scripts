--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769623.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769623.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:31:14 
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
	MovementLoopAddLocation(NPC, 165.66, -0.43, -177.81, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 188.04, -0.66, -164.92, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 188.14, -0.66, -141.84, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 185.14, -0.65, -171.28, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 183.13, -0.64, -165.47, 2, 0)
	MovementLoopAddLocation(NPC, 181.01, -0.41, -162.45, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 180.17, 0.33, -159.45, 2, 0)
	MovementLoopAddLocation(NPC, 181.15, 0.24, -148.04, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 200.64, -0.7, -161.08, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 193.71, -0.68, -161.01, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 213.45, -0.75, -154.71, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 185.34, -0.64, -175.37, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 195.13, -0.68, -172.83, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 191.14, -0.67, -171.54, 2, 0)
	MovementLoopAddLocation(NPC, 177.34, -0.11, -164.87, 2, 0)
	MovementLoopAddLocation(NPC, 175.38, 0.7, -162.55, 2, math.random(14, 28))
end


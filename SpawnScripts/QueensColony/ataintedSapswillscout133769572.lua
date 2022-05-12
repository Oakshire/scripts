--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769572.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769572.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:21:10 
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
	MovementLoopAddLocation(NPC, 128.58, -0.82, -216.31, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 130.12, -0.58, -214.53, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 131.52, -0.78, -216.19, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 146.14, -0.49, -212.35, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 165.89, -0.56, -215.4, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 137.26, -0.46, -210.24, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 163.4, -0.75, -207.44, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 137.31, -0.46, -212.4, 2, math.random(14, 28))
end



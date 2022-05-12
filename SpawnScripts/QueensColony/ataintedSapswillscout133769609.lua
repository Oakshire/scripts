--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769609.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769609.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:29:39 
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
	MovementLoopAddLocation(NPC, 151.56, -0.52, -192.03, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 137.12, -0.46, -195.15, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 154.29, -0.53, -188.05, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 129.19, -0.44, -174.01, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 137.17, 0.24, -181.2, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 133, -0.45, -183.34, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 131.46, -0.44, -184.14, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 150.95, -0.51, -196, 2, math.random(14, 28))
end



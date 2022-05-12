--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769536.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769536.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:17:58 
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
	MovementLoopAddLocation(NPC, 236.57, -0.83, -184.83, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 234.13, -0.82, -174.67, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 247.91, -0.67, -147.37, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 251.52, -1.06, -144.88, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 240.56, -0.45, -152.63, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 221.65, -0.78, -183.98, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 227.97, -0.8, -177.47, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 236.86, -0.83, -181.27, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 253.84, -1.19, -172.59, 2, math.random(14, 28))
end



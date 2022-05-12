--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout429255.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout429255.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:15:22 
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
	MovementLoopAddLocation(NPC, 245.57, -0.84, -134.65, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 237.67, -1.01, -115.02, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 227.76, -0.86, -108.75, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 229.65, -0.98, -113.86, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 228.77, -0.91, -116.23, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 236.73, -0.9, -125.84, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 248.56, -0.99, -144.8, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 235.8, -1.36, -107.75, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 246.59, -0.87, -146.26, 2, math.random(14, 28))
end



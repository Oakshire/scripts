--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769527.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769527.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:16:01 
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
	MovementLoopAddLocation(NPC, 239.27, -0.19, -164.58, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 239.8, -0.55, -174.54, 2, 0)
	MovementLoopAddLocation(NPC, 238.1, -0.84, -179.56, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 245.22, 0.21, -164.37, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 229.31, -0.87, -157.9, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 242.87, 0.22, -167.07, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 217.86, -0.76, -183.66, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 218.07, -0.76, -172.01, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 240.93, -0.85, -145.87, 2, 0)
	MovementLoopAddLocation(NPC, 249.11, -1.14, -140.89, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 248.04, -0.95, -145.38, 2, 0)
end



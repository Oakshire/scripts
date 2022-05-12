--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769574.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769574.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:21:27 
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
	MovementLoopAddLocation(NPC, 128.73, -0.43, -208.81, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 131.37, -0.44, -207.25, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 127.64, -0.42, -209.64, 2, 0)
	MovementLoopAddLocation(NPC, 122.53, -0.59, -214.5, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 124.02, -0.84, -218.76, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 135.28, -0.63, -214.87, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 123.86, -0.41, -208.65, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 122.45, -0.4, -206.58, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 146.76, -0.85, -216.88, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 148.1, -0.58, -209.68, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 152.83, -0.52, -212.68, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 144.17, -0.48, -211.21, 2, 0)
	MovementLoopAddLocation(NPC, 135.78, -0.45, -207.97, 2, 0)
	MovementLoopAddLocation(NPC, 129.17, -0.43, -208.69, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 123.13, -0.78, -215.88, 2, math.random(14, 28))
end



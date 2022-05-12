--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769597.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769597.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:25:25 
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
	MovementLoopAddLocation(NPC, 87.42, -0.28, -175.5, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 95.09, -0.43, -157.13, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 84.13, -0.27, -178.61, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 76.67, -0.02, -166.29, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 82.29, -0.26, -194.03, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 86.45, -0.47, -190.9, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 87.42, -0.24, -157.3, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 80.22, 0.38, -172.71, 2, 0)
	MovementLoopAddLocation(NPC, 76, -0.06, -178.97, 2, 0)
	MovementLoopAddLocation(NPC, 75.62, -0.5, -183.22, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 80.75, -0.26, -180.32, 2, 0)
	MovementLoopAddLocation(NPC, 90.68, -0.36, -172.28, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 76.58, 0.11, -167.69, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 101.45, -1.79, -154.11, 2, math.random(14, 28))
end


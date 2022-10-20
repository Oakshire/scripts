--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/afreshwatertrout1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.19 07:10:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 912.84, 0.89, -276.71, 2, 4)
	MovementLoopAddLocation(NPC, 915.41, 0.53, -270.76, 2, 0)
	MovementLoopAddLocation(NPC, 920.29, -0.06, -265.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 920.29, -0.06, -265.84, 2, 0)
	MovementLoopAddLocation(NPC, 918.9, 0.06, -266.17, 2, 0)
	MovementLoopAddLocation(NPC, 915.31, 0.45, -264.44, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 915.31, 0.45, -264.44, 2, 0)
	MovementLoopAddLocation(NPC, 913.9, 0.79, -276.75, 2, 0)
	MovementLoopAddLocation(NPC, 916.55, 0.9, -280.01, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 916.55, 0.9, -280.01, 2, 0)
	MovementLoopAddLocation(NPC, 912.21, 0.9, -275.92, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 912.21, 0.9, -275.92, 2, 0)
	MovementLoopAddLocation(NPC, 918.74, 0.07, -265.99, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 918.74, 0.07, -265.99, 2, 0)
	MovementLoopAddLocation(NPC, 912.84, 0.89, -276.71, 2, 4)
end

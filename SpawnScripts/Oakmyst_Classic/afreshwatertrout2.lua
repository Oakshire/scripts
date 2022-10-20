--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/afreshwatertrout2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.19 07:10:49
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
	MovementLoopAddLocation(NPC, 916.65, 0.29, -265.67, 2, 4)
	MovementLoopAddLocation(NPC, 923.5, 0.19, -260.99, 2, 0)
	MovementLoopAddLocation(NPC, 931.04, 0.27, -262.99, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 931.04, 0.27, -262.99, 2, 0)
	MovementLoopAddLocation(NPC, 934.46, 0.71, -257.49, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 934.46, 0.71, -257.49, 2, 0)
	MovementLoopAddLocation(NPC, 928.76, 0.28, -259.37, 2, 0)
	MovementLoopAddLocation(NPC, 917.97, 0.21, -267.64, 2, 0)
	MovementLoopAddLocation(NPC, 915.04, 0.55, -269.12, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 915.04, 0.55, -269.12, 2, 0)
	MovementLoopAddLocation(NPC, 923.74, 0.07, -262.18, 2, 0)
	MovementLoopAddLocation(NPC, 924.92, 0.44, -257.79, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 924.92, 0.44, -257.79, 2, 0)
	MovementLoopAddLocation(NPC, 922.57, 0.01, -267.41, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 922.57, 0.01, -267.41, 2, 0)
	MovementLoopAddLocation(NPC, 915.74, 0.4, -263.98, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 915.74, 0.4, -263.98, 2, 0)
	MovementLoopAddLocation(NPC, 916.65, 0.29, -265.67, 2, 4)
end


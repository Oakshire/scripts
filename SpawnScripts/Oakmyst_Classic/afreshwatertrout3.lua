--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/afreshwatertrout3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.19 07:10:26
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
	MovementLoopAddLocation(NPC, 922.23, 0.08, -262.01, 2, 4)
	MovementLoopAddLocation(NPC, 916.57, 0.3, -263.78, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 916.57, 0.3, -263.78, 2, 0)
	MovementLoopAddLocation(NPC, 926.13, 0.41, -256.72, 2, 0)
	MovementLoopAddLocation(NPC, 936.44, 0.89, -255.03, 2, 0)
	MovementLoopAddLocation(NPC, 939.02, 0.98, -253.16, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 939.02, 0.98, -253.16, 2, 0)
	MovementLoopAddLocation(NPC, 934.63, 0.71, -257, 2, 0)
	MovementLoopAddLocation(NPC, 934.14, 0.63, -267.49, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 934.14, 0.63, -267.49, 2, 0)
	MovementLoopAddLocation(NPC, 923.01, 0.5, -258.05, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 923.01, 0.5, -258.05, 2, 0)
	MovementLoopAddLocation(NPC, 918.22, 0.18, -267.41, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 918.22, 0.18, -267.41, 2, 0)
	MovementLoopAddLocation(NPC, 922.23, 0.08, -262.01, 2, 4)
end


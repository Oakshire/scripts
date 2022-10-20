--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/afreshwatertrout4.lua
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
	MovementLoopAddLocation(NPC, 930.27, 0.32, -260.4, 2, 4)
	MovementLoopAddLocation(NPC, 935.82, 0.74, -256.85, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 935.82, 0.74, -256.85, 2, 0)
	MovementLoopAddLocation(NPC, 929.97, 0.28, -262.05, 2, 0)
	MovementLoopAddLocation(NPC, 933.11, 0.81, -269.21, 2, 0)
	MovementLoopAddLocation(NPC, 932.55, 0.9, -274.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 932.55, 0.9, -274.84, 2, 0)
	MovementLoopAddLocation(NPC, 932.21, 0.35, -264.96, 2, 0)
	MovementLoopAddLocation(NPC, 927.41, 0.26, -260.75, 2, 0)
	MovementLoopAddLocation(NPC, 918.91, 0.21, -262.36, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 918.91, 0.21, -262.36, 2, 0)
	MovementLoopAddLocation(NPC, 928.92, 0.42, -255.34, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 928.92, 0.42, -255.34, 2, 0)
	MovementLoopAddLocation(NPC, 921.33, 0.01, -267.8, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 921.33, 0.01, -267.8, 2, 0)
	MovementLoopAddLocation(NPC, 930.27, 0.32, -260.4, 2, 4)
end


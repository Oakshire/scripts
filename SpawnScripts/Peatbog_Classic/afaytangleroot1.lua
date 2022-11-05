--[[
    Script Name    : SpawnScripts/Peatbog_Classic/afaytangleroot1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.04 07:11:30
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
	MovementLoopAddLocation(NPC, 683.83, -33.19, 519.99, 2, 4)
	MovementLoopAddLocation(NPC, 696.65, -32.55, 522.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 696.65, -32.55, 522.84, 2, 0)
	MovementLoopAddLocation(NPC, 702.71, -33.88, 511.03, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 702.71, -33.88, 511.03, 2, 0)
	MovementLoopAddLocation(NPC, 702.88, -33.05, 504.25, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 702.88, -33.05, 504.25, 2, 0)
	MovementLoopAddLocation(NPC, 706.96, -33.06, 504.21, 2, 0)
	MovementLoopAddLocation(NPC, 712.94, -33.39, 509.2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 712.94, -33.39, 509.2, 2, 0)
	MovementLoopAddLocation(NPC, 713.11, -33.86, 516.1, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 713.11, -33.86, 516.1, 2, 0)
	MovementLoopAddLocation(NPC, 723.42, -32.91, 512.2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 723.42, -32.91, 512.2, 2, 0)
	MovementLoopAddLocation(NPC, 716.12, -33.53, 513.05, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 716.12, -33.53, 513.05, 2, 0)
	MovementLoopAddLocation(NPC, 710.3, -32.86, 522.8, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 710.3, -32.86, 522.8, 2, 0)
	MovementLoopAddLocation(NPC, 697.34, -32.12, 525.4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 697.34, -32.12, 525.4, 2, 0)
	MovementLoopAddLocation(NPC, 678.13, -33.14, 523.91, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 678.13, -33.14, 523.91, 2, 0)
	MovementLoopAddLocation(NPC, 683.83, -33.19, 519.99, 2, 4)
end


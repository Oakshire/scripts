--[[
    Script Name    : SpawnScripts/Peatbog_Classic/afaytangleroot3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.04 08:11:45
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
	MovementLoopAddLocation(NPC, 675.93, -33.07, 556.94, 2, 4)
	MovementLoopAddLocation(NPC, 670.21, -32.74, 547.07, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 670.21, -32.74, 547.07, 2, 0)
	MovementLoopAddLocation(NPC, 674.66, -32.95, 535.86, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 674.66, -32.95, 535.86, 2, 0)
	MovementLoopAddLocation(NPC, 672.69, -32.73, 526.78, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 672.69, -32.73, 526.78, 2, 0)
	MovementLoopAddLocation(NPC, 681.79, -33.12, 524.45, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 681.79, -33.12, 524.45, 2, 0)
	MovementLoopAddLocation(NPC, 681.01, -32.98, 530.87, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 681.01, -32.98, 530.87, 2, 0)
	MovementLoopAddLocation(NPC, 673.25, -32.85, 545.64, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 673.25, -32.85, 545.64, 2, 0)
	MovementLoopAddLocation(NPC, 682.99, -33.21, 555.6, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 682.99, -33.21, 555.6, 2, 0)
	MovementLoopAddLocation(NPC, 682.62, -32.97, 563.52, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 682.62, -32.97, 563.52, 2, 0)
	MovementLoopAddLocation(NPC, 675.93, -33.07, 556.94, 2, 4)
end


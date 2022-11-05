--[[
    Script Name    : SpawnScripts/Peatbog_Classic/afaytangleroot2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.04 08:11:30
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
	MovementLoopAddLocation(NPC, 686.48, -33.17, 560.86, 2, 4)
	MovementLoopAddLocation(NPC, 703.91, -33.25, 565.25, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 703.91, -33.25, 565.25, 2, 0)
	MovementLoopAddLocation(NPC, 706.99, -32.37, 551.7, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 706.99, -32.37, 551.7, 2, 0)
	MovementLoopAddLocation(NPC, 703.83, -32.13, 550.4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 703.83, -32.13, 550.4, 2, 0)
	MovementLoopAddLocation(NPC, 718.34, -32.73, 565.54, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 718.34, -32.73, 565.54, 2, 0)
	MovementLoopAddLocation(NPC, 723.4, -32.83, 563.62, 2, 0)
	MovementLoopAddLocation(NPC, 726.06, -33.48, 551.64, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 726.06, -33.48, 551.64, 2, 0)
	MovementLoopAddLocation(NPC, 734.47, -32.69, 543.07, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 734.47, -32.69, 543.07, 2, 0)
	MovementLoopAddLocation(NPC, 724.58, -33.1, 542.46, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 724.58, -33.1, 542.46, 2, 0)
	MovementLoopAddLocation(NPC, 724.75, -33.13, 555.13, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 724.75, -33.13, 555.13, 2, 0)
	MovementLoopAddLocation(NPC, 724.82, -32.79, 563.63, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 724.82, -32.79, 563.63, 2, 0)
	MovementLoopAddLocation(NPC, 709.51, -32.98, 558.39, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 709.51, -32.98, 558.39, 2, 0)
	MovementLoopAddLocation(NPC, 685.49, -32.8, 568.26, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 685.49, -32.8, 568.26, 2, 0)
	MovementLoopAddLocation(NPC, 686.48, -33.17, 560.86, 2, 4)
end


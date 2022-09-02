--[[
    Script Name    : SpawnScripts/Antonica/TheDarkpawFanglord3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.01 06:09:13
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -1458.51, -11.56, 646.21, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1451.04, -15.08, 619.52, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1473.11, -7.14, 607.99, 2, 0)
	MovementLoopAddLocation(NPC, -1485.34, -3.1, 606.55, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1511.16, -0.25, 603.9, 2, 0)
	MovementLoopAddLocation(NPC, -1513.43, -0.09, 601.52, 2, 5)
	MovementLoopAddLocation(NPC, -1514.71, -0.01, 599.67, 2, 0)
	MovementLoopAddLocation(NPC, -1547.11, 2.92, 611.51, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1540.58, 1.01, 646.31, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1518.7, -0.66, 645.47, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1461.14, -11.38, 644.81, 2, math.random(5,10))
		
end


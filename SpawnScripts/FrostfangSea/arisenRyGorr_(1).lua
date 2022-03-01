--[[
	Script Name		:	SpawnScripts/FrostfangSea/arisenRyGorr_(1).lua
	Script Purpose	:	for the risen ry'gorrs that charge to the coldain spirits
	Script Author	:	theFoof
	Script Date		:	2013.6.6
	Script Notes	:	
--]]

function spawn(NPC)
    MovementLoopAddLocation(NPC, 528.32, 28.07, -210.69 + math.random(-6,6), 7, 0)
	MovementLoopAddLocation(NPC, 525.01, 28.19, -209.87, 7, 0)
	MovementLoopAddLocation(NPC, 528.32, 28.07, -210.69 + math.random(-6,6), 7, 0)
	MovementLoopAddLocation(NPC, 529.93, 27.87, -215.16, 7, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end
--[[
	Script Name		:	SpawnScripts/FrostfangSea/arisenRyGorr_(2).lua
	Script Purpose	:	for the risen ry'gorrs that charge to the coldain spirits
	Script Author	:	theFoof
	Script Date		:	2013.6.6
	Script Notes	:	
--]]

function spawn(NPC)
    MovementLoopAddLocation(NPC, 536.09, 27.54, -232.17, 7, 0)
	MovementLoopAddLocation(NPC, 535.09, 27.55, -236.44, 7, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end
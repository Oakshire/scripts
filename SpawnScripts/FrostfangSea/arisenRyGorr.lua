--[[
	Script Name		:	SpawnScripts/FrostfangSea/arisenRyGorr.lua
	Script Purpose	:	for the risen ry'gorrs that charge to the coldain spirits
	Script Author	:	theFoof
	Script Date		:	2013.6.6
	Script Notes	:	
--]]

function spawn(NPC)
    MovementLoopAddLocation(NPC, 510.72, 24.45, -189.84, 7, 0)
	MovementLoopAddLocation(NPC, 508.34, 27.58, -185.98, 7, 0)
	MovementLoopAddLocation(NPC, 512.46, 27.67, -194.57, 7, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end
--[[
	Script Name		:	SpawnScripts/FrostfangSea/arisenRyGorr_(3).lua
	Script Purpose	:	for the risen ry'gorrs that charge to the coldain spirits
	Script Author	:	theFoof
	Script Date		:	2013.6.6
	Script Notes	:	
--]]

function spawn(NPC)
    MovementLoopAddLocation(NPC, 546.76, 27.94, -246.18 + math.random(-6,6), 7, 0)
	MovementLoopAddLocation(NPC, 542.41, 27.77, -242.28, 7, 0)
	MovementLoopAddLocation(NPC, 546.76, 27.94, -246.18 + math.random(-6,6), 7, 0)
	MovementLoopAddLocation(NPC, 546.5, 28.19, -249.81, 7, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end
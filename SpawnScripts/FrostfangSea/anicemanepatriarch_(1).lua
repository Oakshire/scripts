--[[
	Script Name		:	SpawnScripts/FrostfangSea/anicemanepatriarch_(1).lua
	Script Purpose	:	for an icemane patriarch with a unique path
	Script Author	:	theFoof
	Script Date		:	2013.6.6
	Script Notes	:	
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 604.57, 24.67, -350.41, 2, math.random(5,20))
	MovementLoopAddLocation(NPC, 586.88, 48.58, -408.83, 2, math.random(5,20))
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end
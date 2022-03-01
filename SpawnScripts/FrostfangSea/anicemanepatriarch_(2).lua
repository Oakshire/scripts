--[[
	Script Name		:	SpawnScripts/FrostfangSea/anicemanepatriarch_(2).lua
	Script Purpose	:	for an icemane patriarch with a unique path
	Script Author	:	theFoof
	Script Date		:	2013.6.6
	Script Notes	:	
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 571.74, 56.41, -405.34, 2, math.random(5,20))
	MovementLoopAddLocation(NPC, 582.2, 53.27, -400.71, 2, 0)
	MovementLoopAddLocation(NPC, 586.1, 44.33, -372.47, 2, 0)
	MovementLoopAddLocation(NPC, 590.7, 43.18, -359.4, 2, math.random(5,20))
	MovementLoopAddLocation(NPC, 586.1, 44.33, -372.47, 2, 0)
	MovementLoopAddLocation(NPC, 582.2, 53.27, -400.71, 2, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end
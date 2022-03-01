--[[
	Script Name		:	SpawnScripts/areanimatedRyGorr.lua
	Script Purpose	:   for the spawn a reanimated Ry'Gorr
	Script Author	:	theFoof
	Script Date		:	2013.6.6
	Script Notes	:	
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 790.78, 31.46, 93.56, 2, math.random(5,15))
	MovementLoopAddLocation(NPC, 773.25, 36.43, 78.13, 2, 0)
	MovementLoopAddLocation(NPC, 743.98, 41.91, 75.01, 2, 0)
	MovementLoopAddLocation(NPC, 702.1, 48.18, 121.05, 2, 0)
	MovementLoopAddLocation(NPC, 731.22, 41.6, 160.22, 2, math.random(5,15))
	MovementLoopAddLocation(NPC, 702.1, 48.18, 121.05, 2, 0)
	MovementLoopAddLocation(NPC, 743.98, 41.91, 75.01, 2, 0)
	MovementLoopAddLocation(NPC, 773.25, 36.43, 78.13, 2, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end
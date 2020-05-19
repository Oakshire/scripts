--[[
	Script Name		:	SpawnScripts/FrostfangSea/afroglokcitizen_(swimming).lua
	Script Purpose	:	makes a froglok citizen swim around in circles
	Script Author	:	theFoof
	Script Date		:	2013.9.14
	Script Notes	:
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 19, 146.01, -60, 1, 10)
	MovementLoopAddLocation(NPC, 17.74, 146.01, -33.01, 1, 0)
	MovementLoopAddLocation(NPC, 58.43, 146.12, -26.07, 1, 0)
	MovementLoopAddLocation(NPC, 73.05, 146.12, -38.18, 1, 0)
	MovementLoopAddLocation(NPC, 73.8, 146.12, -71.37, 1, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end
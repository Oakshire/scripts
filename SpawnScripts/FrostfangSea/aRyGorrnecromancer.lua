--[[
	Script Name		:	SpawnScripts/FrostfangSea/aRyGorrnecromancer.lua
	Script Purpose	:	for the spawn "a Ry'Gorr necromancer"
	Script Author	:	theFoof
	Script Date		:	2013.6.6
	Script Notes	:	
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function aggro(NPC)
	SpawnSet(NPC, "action_state", "0")
end

function CombatReset(NPC)
	SpawnSet(NPC, "action_state", "10974")
end
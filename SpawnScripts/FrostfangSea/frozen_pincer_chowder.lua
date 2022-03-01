--[[
	Script Name		:	SpawnScripts/FrostfangSea/a_frozen_pincer_chowder.lua
	Script Purpose	:	the spawn frozen_pincer_chowder
	Script Author	:	theFoof
	Script Date		:	2013.9.2
	Script Notes	:	
--]]

local FrozenChowder = 88

function spawn(NPC)
	SetRequiredQuest(NPC, FrozenChowder, 4)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'pick up a bowl of frozen pincer chowder' then
		if GetQuestStep(Spawn, FrozenChowder) == 4 then
			SetStepComplete(Spawn, FrozenChowder, 4)
			RemoveSpawnAccess(NPC, Spawn)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if GetQuestStep(Spawn, FrozenChowder) == 4 then
		AddSpawnAccess(NPC, Spawn)
	end
end
--[[
	Script Name		:	SpawnScripts/FrostfangSea/ahalasianreedplant.lua
	Script Purpose	:	halasian reed plants
	Script Author	:	theFoof
	Script Date		:	2013.9.2
	Script Notes	:	
--]]

local FrozenChowder = 88

function spawn(NPC)
	SetRequiredQuest(NPC, FrozenChowder, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'a sprig of halasian reed' then
		if GetQuestStep(Spawn, FrozenChowder) == 1 then
			Despawn(NPC)
			SetStepComplete(Spawn, FrozenChowder, 1)
		end
	end
end
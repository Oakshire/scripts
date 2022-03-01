--[[
	Script Name		:	SpawnScripts/FrostfangSea/shardofglowingvelium.lua
	Script Purpose	:	for the spawn "shard of glowing velium"
	Script Author	:	theFoof
	Script Date		:	2013.7.18
	Script Notes	:	
--]]

local WatchBelow = 77

function spawn(NPC)
	SetRequiredQuest(NPC, WatchBelow, 1)
	AddTimer(NPC, 25000, "Despawn")
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'pick up crystal shard' then
		if GetQuestStep(Spawn, WatchBelow) == 1 then
			Despawn(NPC)
			AddStepProgress(Spawn, WatchBelow, 1, 1)
		end
	end
end
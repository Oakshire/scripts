--[[
	Script Name		:	SpawnScripts/FrostfangSea/ceriseveliumcrystalgeode.lua
	Script Purpose	:	for the crystal geodes in the quest "Geode Caching"
	Script Author	:	theFoof
	Script Date		:	2013.6.15
	Script Notes	:	
--]]

local GeodeCaching = 69

function spawn(NPC)
	SetRequiredQuest(NPC, GeodeCaching, 1)
	AddTimer(NPC, 300000, "Despawn")
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'gather ' then
		Despawn(NPC)
		AddStepProgress(Spawn, GeodeCaching, 1, 1)
	end
end
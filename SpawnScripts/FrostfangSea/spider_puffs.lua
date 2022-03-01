--[[
	Script Name		:	SpawnScripts/FrostfangSea/spider_puffs.lua
	Script Purpose	:	the spawn spider_puffs
	Script Author	:	theFoof
	Script Date		:	2013.8.27
	Script Notes	:	
--]]

local SpiderPuffs = 87

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if GetQuestStep(Spawn, SpiderPuffs) == 4 then
		if SpellName == "pick up a plate of spider puffs" then
			SetStepComplete(Spawn, SpiderPuffs, 4)
			RemoveSpawnAccess(NPC, Spawn)
		end
	end
end
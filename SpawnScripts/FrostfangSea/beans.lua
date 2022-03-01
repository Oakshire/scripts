--[[
	Script Name		:	SpawnScripts/FrostfangSea/beans.lua
	Script Purpose	:	beans
	Script Author	:	theFoof
	Script Date		:	2013.9.3
	Script Notes	:	
--]]

local HamBeans = 89

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'a handful of halasian beans' then
		if GetQuestStep(Spawn, HamBeans) == 1 then
			Despawn(NPC)
			SetStepComplete(Spawn, HamBeans, 1)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if GetQuestStep(Spawn, HamBeans) == 1 then
		AddSpawnAccess(NPC, Spawn)
	end
end
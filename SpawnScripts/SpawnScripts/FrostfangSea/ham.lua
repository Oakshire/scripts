--[[
	Script Name		:	SpawnScripts/FrostfangSea/ham.lua
	Script Purpose	:	a ham
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
	if SpellName == 'pick up a plate of ham and beans' then
		if GetQuestStep(Spawn, HamBeans) == 4 then
			RemoveSpawnAccess(NPC, Spawn)
			SetStepComplete(Spawn, HamBeans, 4)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if GetQuestStep(Spawn, HamBeans) == 4 then
		AddSpawnAccess(NPC, Spawn)
	end
end
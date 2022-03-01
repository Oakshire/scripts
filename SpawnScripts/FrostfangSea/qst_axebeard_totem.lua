--[[
	Script Name		:	SpawnScripts/FrostfangSea/qst_axebeard_totem.lua
	Script Purpose	:	for the spawn "qst_axebeard_x4_totem"
	Script Author	:	theFoof
	Script Date		:	2013.5.28
	Script Notes	:	
--]]
local TotemAnnihilation = 34

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'destroy the totem' then
		if GetQuestStep(Spawn, TotemAnnihilation) == 1 then
	        AddStepProgress(Spawn, TotemAnnihilation, 1, 1)
			Despawn(NPC)
	    end
    end
end

function SpawnAccess(NPC, Spawn)
	if GetQuestStep(Spawn, TotemAnnihilation) == 1 then
		AddSpawnAccess(NPC, Spawn)
    else 
		RemoveSpawnAccess(NPC, Spawn)
    end
end
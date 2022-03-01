--[[
	Script Name		:	SpawnScripts/FrostfangSea/imbuedRyGorrpickaxe.lua
	Script Purpose	:	for the imbued RyGorr pickaxe spawns
	Script Author	:	theFoof
	Script Date		:	2013.7.10
	Script Notes	:	
--]]

local RyGorrTaking = 76

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetRequiredQuest(NPC, RyGorrTaking, 1)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'Gather Pickaxe' then
		if GetQuestStep(Spawn, RyGorrTaking) == 1 then
			Despawn(NPC)
			AddStepProgress(Spawn, RyGorrTaking, 1, 1)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if GetQuestStep(Spawn, RyGorrTaking) == 1 then
		AddSpawnAccess(NPC, Spawn)
	end
end
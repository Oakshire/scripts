--[[
	Script Name		:	SpawnScripts/FrostfangSea/astrangeicecrystal.lua
	Script Purpose	:	for the spawn "a strange ice crystal"
	Script Author	:	theFoof
	Script Date		:	2013.5.30
	Script Notes	:	
--]]

local BarteringCrystals = 28

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'pick up a strange ice crystal' then
		if GetQuestStep(Spawn, BarteringCrystals) == 1 then
			AddStepProgress(Spawn, BarteringCrystals, 1, 1)
			Despawn(NPC)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if GetQuestStep(Spawn, BarteringCrystals) == 1 then
		AddSpawnAccess(NPC, Spawn)
	end
end
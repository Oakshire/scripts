--[[
	Script Name		:	SpawnScripts/FrostfangSea/RyGorrfirepittorch.lua
	Script Purpose	:	for the spawn "Ry'Gorr firepit torch"
	Script Author	:	theFoof
	Script Date		:	2013.6.20
	Script Notes	:	
--]]

local HighlyMaterials = 74

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	SetRequiredQuest(NPC, HighlyMaterials, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, HighlyMaterials) and not HasItem(Spawn, 47882) then
		AddSpawnAccess(NPC, Spawn)
	end
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'pick up' then
	if HasQuest(Spawn, HighlyMaterials) and not HasItem(Spawn, 47882) then
			Despawn(NPC)
			SummonItem(Spawn, 47882)
			if HasQuest(Spawn, HighlyMaterials) and GetQuestStep(Spawn, HighlyMaterials) == 1 then
				SetStepComplete(Spawn, HighlyMaterials, 1)
			end
		end
	end
end
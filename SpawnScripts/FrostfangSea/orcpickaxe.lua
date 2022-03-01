--[[
	Script Name		:	SpawnScripts/FrostfangSea/orcpickaxe.lua
	Script Purpose	:	for the spawns "orc pickaxe"
	Script Author	:	theFoof
	Script Date		:	2013.7.23
	Script Notes	:	
--]]

local MysteryIceberg = 80

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, MysteryIceberg) and not QuestStepIsComplete(Spawn, MysteryIceberg, 1) then
		if SpellName == 'Gather_Pickaxe' then
			AddStepProgress(Spawn, MysteryIceberg, 1, 1)
			Despawn(NPC)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, MysteryIceberg) and not QuestStepIsComplete(Spawn, MysteryIceberg, 1) then
		AddSpawnAccess(NPC, Spawn)
	end
end
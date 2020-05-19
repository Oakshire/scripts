--[[
	Script Name		:	SpawnScripts/FrostfangSea/qst_herga_x5_helm.lua
	Script Purpose	:	for the helm during the quest "All That Remains"
	Script Author	:	theFoof
	Script Date		:	2013.6.5
	Script Notes	:	
--]]

local AllRemains = 55

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'retrieve the helm' then
		if GetQuestStep(Spawn, AllRemains) == 1 then
			SetStepComplete(Spawn, AllRemains, 1)
			local orc = SpawnByLocationID(GetZone(NPC), 33474)
			Attack(orc, Spawn)
		elseif GetQuestStep(Spawn, AllRemains) == 3 then
			SetStepComplete(Spawn, AllRemains, 3)
			RemoveSpawnAccess(NPC, Spawn)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, AllRemains) and GetQuestStep(Spawn, AllRemains) < 4 then
		AddSpawnAccess(NPC, Spawn)
	end
end
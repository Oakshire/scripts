--[[
	Script Name	: SpawnScripts/Nettleville/loosesoil.lua
	Script Purpose	: loose soil
	Script Author	: Scatman
	Script Date	: 2009.08.21
	Script Notes	: 
--]]

local QUEST_1_FROM_LAKOSHA = 300

function spawn(NPC)
	local sli = GetSpawnLocationID(NPC)
	if sli == 565366 then
		SetRequiredQuest(NPC, QUEST_1_FROM_LAKOSHA, 1, 1)
	elseif sli == 565350 then
		SetRequiredQuest(NPC, QUEST_1_FROM_LAKOSHA, 2, 1)
	elseif sli == 565360 then
		SetRequiredQuest(NPC, QUEST_1_FROM_LAKOSHA, 3, 1)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn)
Say(Spawn, "Test")
	if HasQuest(Spawn, QUEST_1_FROM_LAKOSHA) and GetQuestStep(Spawn, QUEST_1_FROM_LAKOSHA) <= 3 then
		local sli = GetSpawnLocationID(NPC)
Say(Spawn, sli)
		if sli == 565366 then
			if not QuestStepIsComplete(Spawn, QUEST_1_FROM_LAKOSHA, 1) then
				SetStepComplete(Spawn, QUEST_1_FROM_LAKOSHA, 1)
			end
		elseif sli == 565350 then
			if not QuestStepIsComplete(Spawn, QUEST_1_FROM_LAKOSHA, 2) then
				SetStepComplete(Spawn, QUEST_1_FROM_LAKOSHA, 2)
			end
		elseif sli == 565360 then
			if not QuestStepIsComplete(Spawn, QUEST_1_FROM_LAKOSHA, 3) then
				SetStepComplete(Spawn, QUEST_1_FROM_LAKOSHA, 3)
			end
		end
	end
end
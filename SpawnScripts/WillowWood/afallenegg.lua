--[[
	Script Name	: SpawnScripts/WillowWood/afallenegg.lua
	Script Purpose	: a fallen egg
	Script Author	: Scatman
	Script Date	: 2009.09.20
	Script Notes	: 
--]]

-- a fallen bird egg
local HALF_ELF_MENTOR_QUEST_1 = 218

function spawn(NPC)
	local spawn_location_id = GetSpawnLocationID(NPC)
	
	-- docks (step 5)
	if spawn_location_id == 558481 then
		SetRequiredQuest(NPC, HALF_ELF_MENTOR_QUEST_1, 5)
	
	-- inn roof (step 4)
	elseif spawn_location_id == 1585292 then
		SetRequiredQuest(NPC, HALF_ELF_MENTOR_QUEST_1, 4)
		
	-- forest ruins (step 6)
	elseif spawn_location_id == 558483 then
		SetRequiredQuest(NPC, HALF_ELF_MENTOR_QUEST_1, 6)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn)
	if HasQuest(Spawn, HALF_ELF_MENTOR_QUEST_1) and GetQuestStep(Spawn, HALF_ELF_MENTOR_QUEST_1) >= 4 and GetQuestStep(Spawn, HALF_ELF_MENTOR_QUEST_1) <= 6 then
		local spawn_location_id = GetSpawnLocationID(NPC)
		
		-- docks (step 5)
		if spawn_location_id == 558481 then
			SetStepComplete(Spawn, HALF_ELF_MENTOR_QUEST_1, 5)
			Despawn(NPC)
		
		-- inn roof (step 4)
		elseif spawn_location_id == 1585292 then
			SetStepComplete(Spawn, HALF_ELF_MENTOR_QUEST_1, 4)
			Despawn(NPC)
		
		-- forest ruins (step 6)
		elseif spawn_location_id == 558483 then
			SetStepComplete(Spawn, HALF_ELF_MENTOR_QUEST_1, 6)
			Despawn(NPC)
		end
	end
end
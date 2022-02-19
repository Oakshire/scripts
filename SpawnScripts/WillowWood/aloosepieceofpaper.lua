--[[
	Script Name	: SpawnScripts/WillowWood/aloosepieceofpaper.lua
	Script Purpose	: a loose piece of paper
	Script Author	: Scatman
	Script Date	: 2009.09.26
	Script Notes	: 
--]]

local HALFELF_MENTOR_QUEST_3 = 220

function spawn(NPC)
	local spawn_location_id = GetSpawnLocationID(NPC)
	
	-- page 7, step 3
	if spawn_location_id == 558487 then
		SetRequiredQuest(NPC, HALFELF_MENTOR_QUEST_3, 3, 1)
	
	-- page 11, step 4
	elseif spawn_location_id == 1585293 then
		SetRequiredQuest(NPC, HALFELF_MENTOR_QUEST_3, 4, 1)
		
	-- page 12, step 5
	elseif spawn_location_id == 558489 then
		SetRequiredQuest(NPC, HALFELF_MENTOR_QUEST_3, 5, 1)
		
	-- page 3, step 1
	elseif spawn_location_id == 1585294 then
		SetRequiredQuest(NPC, HALFELF_MENTOR_QUEST_3, 1, 1)
	
	-- page 4, step 2
	elseif spawn_location_id == 558491 then
		SetRequiredQuest(NPC, HALFELF_MENTOR_QUEST_3, 2, 1)
	end
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, HALFELF_MENTOR_QUEST_3) and GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_3) <= 5 and SpellName == "Examine" then
		local spawn_location_id = GetSpawnLocationID(NPC)
		
		-- page 7, step 3
		if spawn_location_id == 558487 then
			SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_3, 3)
			Despawn(NPC)
		
		-- page 11, step 4
		elseif spawn_location_id == 1585293 then
			SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_3, 4)
			Despawn(NPC)
			
		-- page 12, step 5
		elseif spawn_location_id == 558489 then
			SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_3, 5)
			Despawn(NPC)
			
		-- page 3, step 1
		elseif spawn_location_id == 1585294 then
			SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_3, 1)
			Despawn(NPC)
		
		-- page 4, step 2
		elseif spawn_location_id == 558491 then
			SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_3, 2)
			Despawn(NPC)
		end
	end
end
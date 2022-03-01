--[[
	Script Name	: SpawnScripts/Castleview/barrel_with_enriched_soil.lua
	Script Purpose	: barrel_with_enriched_soil
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Script Notes	: Updated by Jabantiz (4/24/2017)
--]]

local HIGH_ELF_MENTOR_QUEST_1 = 223

function spawn(NPC)
	SetRequiredQuest(NPC, HIGH_ELF_MENTOR_QUEST_1, 3)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn, Message)
	if not QuestStepIsComplete(Spawn, HIGH_ELF_MENTOR_QUEST_1, 3) then
		SummonItem(Spawn, 9305, 1)
	end
end
--[[
	Script Name	: SpawnScripts/Caves/agnollishbook.lua
	Script Purpose	: a gnollish book
	Script Author	: Scatman
	Script Date	: 2009.10.08
	Script Notes	: 
--]]

local QUEST_1_CONSULBREE = 223

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_1_CONSULBREE, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, QUEST_1_CONSULBREE) and GetQuestStep(Spawn, QUEST_1_CONSULBREE) == 1 and SpellName == "Take book" then
		SetStepComplete(Spawn, QUEST_1_CONSULBREE, 1)
	end
end
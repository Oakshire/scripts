--[[
	Script Name	: SpawnScripts/SunkenCity/curfeld_quest_barrel.lua
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

local QUEST_1_FROM_CURFIELD = 380

function spawn(NPC)
	SetRequiredQuest(QUEST_1_FROM_CURFIELD, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1_FROM_CURFIELD) and GetQuestStep(Spawn, QUEST_1_FROM_CURFIELD) == 1 then
		SendMessage(Spawn, "You search the barrel and find the stolen research documents.");
		SetStepComplete(Spawn, QUEST_1_FROM_CURFIELD, 1)
	end
end
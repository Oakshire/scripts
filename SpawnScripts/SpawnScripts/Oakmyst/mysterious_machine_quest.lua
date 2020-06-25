--[[
	Script Name	: SpawnScripts/Oakmyst/mysterious_machine_quest.lua
	Script Purpose	: a mysterious machine
	Script Author	: Scatman
	Script Date	: 2009.10.07
	Script Notes	: 
--]]

local OAKMYST_CHARLIN_QUEST_3 = 206

function spawn(NPC)
	SetRequiredQuest(NPC, OAKMYST_CHARLIN_QUEST_3, 3)
	SetPlayerProximityFunction(NPC, 15, "InRange")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if HasQuest(Spawn, OAKMYST_CHARLIN_QUEST_3) and GetQuestStep(Spawn, OAKMYST_CHARLIN_QUEST_3) == 3 then
		SendMessage(Spawn, "You hear a slight humming in the plants near the water's edge.")
	end
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, OAKMYST_CHARLIN_QUEST_3) and GetQuestStep(Spawn, OAKMYST_CHARLIN_QUEST_3) == 3 and SpellName == "Inspect" then
		SetStepComplete(Spawn, OAKMYST_CHARLIN_QUEST_3, 3)
		conversation = CreateConversation()
		StartDialogConversation(conversation, 1, NPC, Spawn, "The machine is vibrating ever so slightly. Aside from the humming, there is nothing to suggest that the machine is currently active.")
	end
end
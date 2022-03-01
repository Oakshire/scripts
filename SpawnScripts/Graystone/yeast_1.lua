--[[
	Script Name	: SpawnScripts/Graystone/yeast_1.lua
	Script Purpose	: yeast_1
	Script Author	: Scatman
	Script Date	: 2009.10.05
	Script Notes	: yeast_1 gives quest update
--]]

local DWARF_MENTOR_QUEST_1 = 283

function spawn(NPC)
	SetRequiredQuest(NPC, DWARF_MENTOR_QUEST_1, 2)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, DWARF_MENTOR_QUEST_1) and not QuestStepIsComplete(Spawn, DWARF_MENTOR_QUEST_1, 2) and SpellName == "Search barrel" then
		conversation = CreateConversation()
		AddConversationOption(conversation, "Check for yeast.", "CheckForYeast")
		StartDialogConversation(conversation, 1, NPC, Spawn, "This is marked as being part of shipment #2DF0F.")
	end
end

function CheckForYeast(NPC, Spawn)
	SetStepComplete(Spawn, DWARF_MENTOR_QUEST_1, 2)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Leave the rest of the shipment.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "Just under the lid there is a series of small, connected packets with a single label tag: \"Yeast.\"")
end
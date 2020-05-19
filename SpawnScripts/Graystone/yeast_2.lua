--[[
	Script Name	: SpawnScripts/Graystone/yeast_2.lua
	Script Purpose	: yeast_2
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
	conversation = CreateConversation()
	AddConversationOption(conversation, "Leave the shipment alone.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "There doesn't appear to be any yeast in this barrel, perhaps one of the others.")
end
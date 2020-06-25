--[[
	Script Name	: SpawnScripts/Graystone/frozen_cherries_1.lua
	Script Purpose	: frozen_cherries_1
	Script Author	: Scatman
	Script Date	: 2009.10.05
	Script Notes	: frozen_cherries_3 gives quest update
--]]

local DWARF_MENTOR_QUEST_1 = 283

function spawn(NPC)
	SetRequiredQuest(NPC, DWARF_MENTOR_QUEST_1, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, DWARF_MENTOR_QUEST_1) and not QuestStepIsComplete(Spawn, DWARF_MENTOR_QUEST_1, 1) and SpellName == "Search barrel" then
		conversation = CreateConversation()
		AddConversationOption(conversation, "Check for Frozen Cherries.", "CheckForCherries")
		StartDialogConversation(conversation, 1, NPC, Spawn, "This is marked as being part of shipment #4QGCG.")
	end
end

function CheckForCherries(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Leave the shipment alone.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "There doesn't appaer to be any Frozen Cherries in this barrel, perhaps one of the others.")
end
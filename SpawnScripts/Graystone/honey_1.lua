--[[
	Script Name	: SpawnScripts/Graystone/honey_1.lua
	Script Purpose	: honey_1
	Script Author	: Scatman
	Script Date	: 2009.10.05
	Script Notes	: 
--]]

local DWARF_MENTOR_QUEST_1 = 283

function spawn(NPC)
	SetRequiredQuest(NPC, DWARF_MENTOR_QUEST_1, 3)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, DWARF_MENTOR_QUEST_1) and not QuestStepIsComplete(Spawn, DWARF_MENTOR_QUEST_1, 3) and SpellName == "Search barrel" then
		conversation = CreateConversation()
		AddConversationOption(conversation, "Check for honey.", "CheckForHoney")
		StartDialogConversation(conversation, 1, NPC, Spawn, "This is marked as being part of shipment #QGC4F.")
	end
end

function CheckForHoney(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Leave the shipment alone.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "There doesn't appear to be any honey in this barrel, perhaps one of the others.")
end
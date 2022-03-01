--[[
	Script Name	: SpawnScripts/Graystone/honey_2.lua
	Script Purpose	: honey_2
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
	SetStepComplete(Spawn, DWARF_MENTOR_QUEST_1, 3)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Leave the rest of the shipment.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "Surrounded by coal and containers labeled \"gnomish misc.\" you find a jar clearly labeled \"Honey.\"")
end
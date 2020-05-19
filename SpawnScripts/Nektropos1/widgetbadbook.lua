--[[
    Script Name    : SpawnScripts/Nektropos1/widgetbadbook.lua
    Script Author  : smash
    Script Date    : 2018.06.06 02:06:50
    Script Purpose : 
                   : 
--]]

local FAIR_WARNINGS_IGNORED = 262

function spawn(NPC)
	SetRequiredQuest(NPC, FAIR_WARNINGS_IGNORED, 1, 0, 1, 2)
end

function casted_on(NPC, Player, SpellName)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Open book", "OfferFairWarnings")
	AddConversationOption(conversation, "Don't open", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Player, "You see a large book on the table.")
end

function OfferFairWarnings(NPC, Player)
	CloseConversation(NPC, Player)
	OfferQuest(nil, Player, FAIR_WARNINGS_IGNORED)
end
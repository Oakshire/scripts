--[[
    Script Name    : SpawnScripts/Nektropos1/p53scrollofopening.lua
    Script Author  : smash
    Script Date    : 2016.09.13 11:09:11
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/PlayerHistory"

function casted_on(NPC, Spawn, Message)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Examine the scroll", "GiveAccess")
	StartDialogConversation(conversation, 1, NPC, Spawn, "This scroll roughly shows the location of a number of secret doors in the basement, you think you could probably find them now. It appears too fragile to pick up and bring with you.")
end

function GiveAccess(NPC, Spawn)
	CloseConversation(NPC, Spawn)
	SetPlayerHistory(Spawn, HISTORY.NEK_CASTLE_BASEMENT_ACCESS, 1)
end
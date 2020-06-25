--[[
	Script Name		:	SpawnScripts/Nektropos1/NektroposBarracksLockbox.lua
	Script Purpose	:	
	Script Author	:	smash
	Script Date		:	1/26/2016
	Script Notes	:	
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if Message == "inspect" then
		Dialog1(NPC, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Stop inspecting the lockerbox", "CloseConversation")
	if CanReceiveQuest(Spawn, 176) then
		AddConversationOption(conversation, "Rummage through the lockerbox", "OfferTheRedMarble")
	end
	StartDialogConversation(conversation, 1, NPC, Spawn, "The lockerbox is dark and musky. Most of the items are torn and tattered clothing. Who knows what critters are crawling around underneath.")
end

function OfferTheRedMarble(NPC, Spawn)
	OfferQuest(NPC, Spawn, 176)
end
--[[
	Script Name	: ItemScripts/LargeVerminNotice.lua
	Script Purpose	: Offers quest "Big Pests"
	Script Author	: premierio015
	Script Date	    : 20.06.2020
	Script Notes	:  
--]]

local quest = 571 -- Big Pests Quest ID

function examined(Item, Player)
	if not HasQuest(Player, quest) then
conversation = CreateConversation()
AddConversationOption(conversation, "Read On", "Rats")
AddConversationOption(conversation, "Put note away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "There are reports of a real threat deep within the Vermin's Snye....")
    elseif HasQuest(Player, quest) then
RemoveItem(Player, 8789)
end 
end

function Rats(Item, Player)
    conversation = CreateConversation()
    
    AddConversationOption(conversation, "Very well", "QuestOffer")
    AddConversationOption(conversation, "No thanks", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "...of large tomb vermin spreading diseases! They must hereby be dealt with accordingly. Termination on sight.")
end

function QuestOffer(Item, Player)
 OfferQuest(nil, Player, quest)   
end
--[[
	Script Name	: ItemScripts/LittleVerminNotice.lua
	Script Purpose	: Offers quest "Little Pests"
	Script Author	: premierio015
	Script Date	    : 04.06.2020
	Script Notes	:  
--]]

local quest = 565 -- Little Pests Quest ID

function examined(Item, Player)
	if not HasQuest(Player, quest) then
conversation = CreateConversation()
AddConversationOption(conversation, "Read On", "Rats")
AddConversationOption(conversation, "Put note away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "There are reports from Vermin's Snye of a terrible nuisance...")
    elseif HasQuest(Player, quest) then
RemoveItem(Player, 9090)
end 
end

function Rats(Item, Player)
    conversation = CreateConversation()
    
    AddConversationOption(conversation, "Okay!", "QuestOffer")
    AddConversationOption(conversation, "Nah.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "Rats! Specifically tomb vermin. They are hereby to be dealt with accordingly. Termination on sight!")
end

function QuestOffer(Item, Player)
 OfferQuest(nil, Player, quest)   
end


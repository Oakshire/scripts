--[[
	Script Name	: ItemScripts/SpecialistOutlawNotice.lua
	Script Purpose	: Offer Quest "Outlaw Specialists"
	Script Author	: premierio015
	Script Date	: 2020.06.04
	Script Notes :
--]]

local quest = 558 -- Outlaw Specialist Quest ID

function examined(Item, Player)
	if not HasQuest(Player, quest) then
conversation = CreateConversation()

AddConversationOption(conversation, "Read on.", "Eliminate")
AddConversationOption(conversation, "Put the note away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Specialist Bloodsabers have been classified as outlaws...")
    elseif HasQuest(Player, quest) then
RemoveItem(Player, 13161)
end 
end

function Eliminate(Item, Player)
    
conversation = CreateConversation()    
AddConversationOption(conversation, "They shall be eliminated!", "QuestOffer")
AddConversationOption(conversation, "Not right now.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "..and are to be dealt with accordingly. Eliminated them on sight!")
end
  
function QuestOffer(Item, Player)
OfferQuest(nil, Player, quest)   
end

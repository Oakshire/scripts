--[[
	Script Name	: ItemScripts/TombGuardsBrokenChair.lua
	Script Purpose	: Offer Quest "Tomb Guard's Chair"
	Script Author	: premierio015
	Script Date	: 2020.06.04
	Script Notes :
--]]

local quest = 561 -- Tomb Guard's Chair Quest ID

function examined(Item, Player)
	if not HasQuest(Player, quest) then
conversation = CreateConversation()

AddConversationOption(conversation, "I wonder...", "FindParts")
AddConversationOption(conversation, "Put the chair pieces away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "After the run in with that crumbling tomb guard I found pieces of a chair. I bet when he was alive he got a lot of use out of that chair.")
    elseif HasQuest(Player, quest) then
RemoveItem(Player, 14512)
end 
end

function FIndParts(Item, Player)
      conversation = CreateConversation()  
  
  AddConversationOption(conversation, "Find more parts!", "QuestOffer")
  AddConversationOption(conversation, "Forget it!", "CloseItemConversation")
  StartDialogConversation(conversation, 2, Item, Player, "I'll need to find replacement pieces if I'm going to rebuild this chair. I'm sure there was more than one chair down here for all of the tomb guards, so there should be ample replacement parts.")
end

function QuestOffer(Item, Player)
 OfferQuest(nil, Player, quest)   
end
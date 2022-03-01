--[[
	Script Name	: ItemScripts/BloodsaberAdeptCoin.lua
	Script Purpose	: Offer Quest "Coin of an Adept"
	Script Author	: premierio015
	Script Date	: 2020.06.04
	Script Notes :
--]]

local quest = 560 -- Coin of an Adept Quest ID

function examined(Item, Player)
	if not HasQuest(Player, quest) then
conversation = CreateConversation()

AddConversationOption(conversation, "Curious...", "FindCoins")
AddConversationOption(conversation, "Put the coin away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "You find a rather unusual coin off the Bloodsaber adept.")
    elseif HasQuest(Player, quest) then
RemoveItem(Player, 4402)
end 
end


function FindCoins(Item, Player)
  conversation = CreateConversation()  
  
  AddConversationOption(conversation, "I'll continue searching for these coins.", "QuestOffer")
  AddConversationOption(conversation, "I'd rather not.", "CloseItemConversation")
  StartDialogConversation(conversation, 2, Item, Player, "Maybe if I find enough of these coins I'll be able to figure out what they're used for.")
end

function QuestOffer(Item, Player)
 OfferQuest(nil, Player, quest)   
end

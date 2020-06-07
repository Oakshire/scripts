--[[
	Script Name	: ItemScripts/ThrowingDaggerCoveredWithZombieRot.lua
	Script Purpose	: Offer Quest "Zombie Pincushion"
	Script Author	: premierio015
	Script Date	: 2020.06.04
	Script Notes :
--]]

local quest = 559 -- Zombie Pincushion Quest ID

function examined(Item, Player)
	if not HasQuest(Player, quest) then
conversation = CreateConversation()

AddConversationOption(conversation, "I'd like to find a cleaner dagger.", "FindDagger")
AddConversationOption(conversation, "Put the dagger away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Looks like a throwing dagger covered with zombie rot. It's useless as a weapon.")
    elseif HasQuest(Player, quest) then
RemoveItem(Player, 14442)
end 
end

function FindDagger(Item, Player)
  conversation = CreateConversation()  
  
  AddConversationOption(conversation, "Look for a cleaner dagger.", "QuestOffer")
  AddConversationOption(conversation, "On second thought, I'd rather not...", "CloseItemConversation")
  StartDialogConversation(conversation, 2, Item, Player, "If I do away with enough of these zombies I might be able to find a dagger that's not ruined by the zombie rot.")
end

function QuestOffer(Item, Player)
 OfferQuest(nil, Player, quest)   
end
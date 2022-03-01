--[[
	Script Name	: ItemScripts/RavenousReport.lua
	Script Purpose	: Offer Quest "Ravenous Report"
	Script Author	: premierio015
	Script Date	: 2020.06.04
	Script Notes :
--]]

local quest = 562 -- Ravenous Report Quest ID

function examined(Item, Player)
	if not HasQuest(Player, quest) then
conversation = CreateConversation()

AddConversationOption(conversation, "Read on.", "DestroyCubes")
AddConversationOption(conversation, "Put the note away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Multiple reports of hostile encounters with ravenous cubes in the Vermin's Snye...")
    elseif HasQuest(Player, quest) then
RemoveItem(Player, 11236)
end 
end

function DestroyCubes(Item, Player)
      conversation = CreateConversation()  
  
  AddConversationOption(conversation, "They shall be!", "QuestOffer")
  AddConversationOption(conversation, "Maybe some other time.", "CloseItemConversation")
  StartDialogConversation(conversation, 2, Item, Player, "...They are to be destroyed on sight.")
end

function QuestOffer(Item, Player)
 OfferQuest(nil, Player, quest)   
end
--[[
	Script Name	: ItemScripts/HalfBottleOfBloodsaberBrew.lua
	Script Purpose	: Offers quest "Bloosaber Brew"
	Script Author	: premierio015
	Script Date	    : 04.06.2020
	Script Notes	:  
--]]

local quest = 557 -- Bloodsaber Brew Quest ID

function examined(Item, Player)
	if not HasQuest(Player, quest) then
conversation = CreateConversation()

AddConversationOption(conversation, "Find more bottles of Bloodsaber brew.", "FindBrew")
AddConversationOption(conversation, "Put the bottle away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "I found a half bottle of brew off that Bloodsaber proficient and it tastes pretty good.")
    elseif HasQuest(Player, quest) then
RemoveItem(Player, 8020)
end 
   end

function FindBrew(Item, Player)
    conversation = CreateConversation()
    
    AddConversationOption(conversation, "Let's do this!", "QuestOffer")
    AddConversationOption(conversation, "I'm full, actually.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "I just have to find enough of these bottles of brew and then I can have a small reserve of Bloodsaber brew of my own.")
end

function QuestOffer(Item, Player)
 OfferQuest(nil, Player, quest)   
end

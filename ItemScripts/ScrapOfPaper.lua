--[[
	Script Name	: ItemScripts/ScrapOfPaper.lua
	Script Purpose	: Offers quest "Paper Puzzle"
	Script Author	: premierio015
	Script Date	    : 20.06.2020
	Script Notes	:  
--]]

local quest = 570 -- Paper Puzzle Quest ID

function examined(Item, Player)
	if not HasQuest(Player, quest) then
conversation = CreateConversation()
AddConversationOption(conversation, "Hmm...", "Pieces")
AddConversationOption(conversation, "Put the scrap away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "It's a scrap of paper with writing on it.")
    elseif HasQuest(Player, quest) then
RemoveItem(Player, 11998)
end 
end

function Pieces(Item, Player)
 conversation = CreateConversation()
 AddConversationOption(conversation, "Find the other pieces.", "QuesrOffer")
 AddConversationOption(conversation, "Never mind.", "CloseItemConversation")
 StartDialogConversation(conversation, 2, Item, Player, "I'm certain the remaining pieces are down here in the Vermin's Snye. All I have to do is find them.")
 end
 
function QuestOffer(Item, Player)
 OfferQuest(nil, Player, quest)   
end

     
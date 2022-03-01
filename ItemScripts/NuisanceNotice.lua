--[[
	Script Name	: ItemScripts/NuisanceNotice.lua
	Script Purpose	: Offers quest "Population Control"
	Script Author	: premierio015
	Script Date	    : 04.06.2020
	Script Notes	:  
--]]

local quest = 564 -- Population Control Quest ID

function examined(Item, Player)
	if not HasQuest(Player, quest) then
conversation = CreateConversation()

AddConversationOption(conversation, "Read on.", "Terminate")
AddConversationOption(conversation, "Put the note away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The grave scorpius population has grown out of hand down in the Vermin's Snye...")
    elseif HasQuest(Player, quest) then
RemoveItem(Player, 10086)
end 
end

function Terminate(Item, Player)
     conversation = CreateConversation()
    
    AddConversationOption(conversation, "They shall be terminated!", "QuestOffer")
    AddConversationOption(conversation, "Uh, no thanks.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "They must be dealt with accordingly. Terminate them on sight!")
    end
    
function QuestOffer(Item, Player)
 OfferQuest(nil, Player, quest)   
end
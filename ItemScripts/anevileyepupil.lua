--[[
    Script Name    : ItemScripts/anevileyepupil.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.01 01:01:40
    Script Purpose : 
                   : 
--]]

local LoreAndLegendEvileye = 5408

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendEvileye) and not HasCompletedQuest(Player, LoreAndLegendEvileye) then
OfferQuest(nil, Player, LoreAndLegendEvileye)
elseif not QuestStepIsComplete(Player, LoreAndLegendEvileye, 4) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the evil eye. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendEvileye, 4)
RemoveItem(Player, 3619)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


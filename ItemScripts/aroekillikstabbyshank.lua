--[[
    Script Name    : ItemScripts/aroekillikstabbyshank.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 11:01:08
    Script Purpose : 
                   : 
--]]

local LoreAndLegendRoekillik = 5433

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendRoekillik) and not HasCompletedQuest(Player, LoreAndLegendRoekillik) then
OfferQuest(nil, Player, LoreAndLegendRoekillik)
elseif not QuestStepIsComplete(Player, LoreAndLegendRoekillik, 5) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the roekillik. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendRoekillik, 5)
RemoveItem(Player, 2532)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


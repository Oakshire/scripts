--[[
    Script Name    : ItemScripts/akoboldfang.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.01 04:01:31
    Script Purpose : 
                   : 
--]]

local LoreAndLegendKobold = 5411

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendKobold) and not HasCompletedQuest(Player, LoreAndLegendKobold) then
OfferQuest(nil, Player, LoreAndLegendKobold)
elseif not QuestStepIsComplete(Player, LoreAndLegendKobold, 4) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the kobold. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendKobold, 4)
RemoveItem(Player, 1961)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


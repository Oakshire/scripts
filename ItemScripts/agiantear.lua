--[[
    Script Name    : ItemScripts/agiantear.lua
    Script Author  : AussieGlen
    Script Date    : 2021.12.31 08:12:53
    Script Purpose : 
                   : 
--]]

local LoreAndLegendGiant = 5400

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendGiant) and not HasCompletedQuest(Player, LoreAndLegendGiant) then
OfferQuest(nil, Player, LoreAndLegendGiant)
elseif not QuestStepIsComplete(Player, LoreAndLegendGiant, 8) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the giant. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendGiant, 8)
RemoveItem(Player, 1770)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


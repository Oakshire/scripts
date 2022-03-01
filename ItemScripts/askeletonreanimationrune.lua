--[[
    Script Name    : ItemScripts/askeletonreanimationrune.lua
    Script Author  : AussieGlen
    Script Date    : 2021.12.29 08:12:07
    Script Purpose : 
                   : 
--]]

local LoreAndLegendSkeleton = 5396

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendSkeleton) and not HasCompletedQuest(Player, LoreAndLegendSkeleton) then
OfferQuest(nil, Player, LoreAndLegendSkeleton)
elseif not QuestStepIsComplete(Player, LoreAndLegendSkeleton, 7) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the skeleton. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendSkeleton, 7)
RemoveItem(Player, 2737)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end

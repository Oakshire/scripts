--[[
    Script Name    : ItemScripts/atreantleaf.lua
    Script Author  : AussieGlen
    Script Date    : 2021.12.31 09:12:45
    Script Purpose : 
                   : 
--]]

local LoreAndLegendTreant = 5401

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendTreant) and not HasCompletedQuest(Player, LoreAndLegendTreant) then
OfferQuest(nil, Player, LoreAndLegendTreant)
elseif not QuestStepIsComplete(Player, LoreAndLegendTreant, 6) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the goblin. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendTreant, 6)
RemoveItem(Player, 3017)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


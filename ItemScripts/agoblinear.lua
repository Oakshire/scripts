--[[
    Script Name    : ItemScripts/agoblinear.lua
    Script Author  : AussieGlen
    Script Date    : 2021.12.27 05:12:11
    Script Purpose : 
                   : 
--]]

local LoreAndLegendGoblin = 5394

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendGoblin) and not HasCompletedQuest(Player, LoreAndLegendGoblin) then
OfferQuest(nil, Player, LoreAndLegendGoblin)
elseif not QuestStepIsComplete(Player, LoreAndLegendGoblin, 8) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the goblin. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendGoblin, 8)
RemoveItem(Player, 1828)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


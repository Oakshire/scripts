--[[
    Script Name    : ItemScripts/agoblineye.lua
    Script Author  : AussieGlen
    Script Date    : 2021.12.27 05:12:18
    Script Purpose : 
                   : 
--]]

local LoreAndLegendGoblin = 5394

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendGoblin) and not HasCompletedQuest(Player, LoreAndLegendGoblin) then
OfferQuest(nil, Player, LoreAndLegendGoblin)
elseif not QuestStepIsComplete(Player, LoreAndLegendGoblin, 4) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the goblin. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendGoblin, 4)
RemoveItem(Player, 1830)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


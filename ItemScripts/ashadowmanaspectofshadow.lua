--[[
    Script Name    : ItemScripts/ashadowmanaspectofshadow.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.01 02:01:07
    Script Purpose : 
                   : 
--]]

local LoreAndLegendShadowman = 5409

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendShadowman) and not HasCompletedQuest(Player, LoreAndLegendShadowman) then
OfferQuest(nil, Player, LoreAndLegendShadowman)
elseif not QuestStepIsComplete(Player, LoreAndLegendShadowman, 4) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the shadowman. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendShadowman, 4)
RemoveItem(Player, 2632)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


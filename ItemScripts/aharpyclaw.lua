--[[
    Script Name    : ItemScripts/aharpyclaw.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 12:01:00
    Script Purpose : 
                   : 
--]]

local LoreAndLegendHarpy = 5417

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendHarpy) and not HasCompletedQuest(Player, LoreAndLegendHarpy) then
OfferQuest(nil, Player, LoreAndLegendHarpy)
elseif not QuestStepIsComplete(Player, LoreAndLegendHarpy, 6) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the harpy. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendHarpy, 6)
RemoveItem(Player, 1891)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


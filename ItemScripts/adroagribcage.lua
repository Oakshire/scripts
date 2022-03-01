--[[
    Script Name    : ItemScripts/adroagribcage.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 07:01:00
    Script Purpose : 
                   : 
--]]

local LoreAndLegendDroag = 5422

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendDroag) and not HasCompletedQuest(Player, LoreAndLegendDroag) then
OfferQuest(nil, Player, LoreAndLegendDroag)
elseif not QuestStepIsComplete(Player, LoreAndLegendDroag, 7) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the droag. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendDroag, 7)
RemoveItem(Player, 1606)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


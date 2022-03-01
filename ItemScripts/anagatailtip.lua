--[[
    Script Name    : ItemScripts/anagatailtip.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 01:01:41
    Script Purpose : 
                   : 
--]]

local LoreAndLegendNaga = 5418

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendNaga) and not HasCompletedQuest(Player, LoreAndLegendNaga) then
OfferQuest(nil, Player, LoreAndLegendNaga)
elseif not QuestStepIsComplete(Player, LoreAndLegendNaga, 8) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the naga. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendNaga, 8)
RemoveItem(Player, 2311)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


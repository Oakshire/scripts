--[[
    Script Name    : ItemScripts/YhaleiScale.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 09:01:29
    Script Purpose : 
                   : 
--]]

local LoreAndLegendYhalei = 5429

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendYhalei) and not HasCompletedQuest(Player, LoreAndLegendYhalei) then
OfferQuest(nil, Player, LoreAndLegendYhalei)
elseif not QuestStepIsComplete(Player, LoreAndLegendYhalei, 6) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the yha-lei. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendYhalei, 6)
RemoveItem(Player, 15642)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


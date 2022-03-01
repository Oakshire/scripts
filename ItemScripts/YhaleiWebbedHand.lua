--[[
    Script Name    : ItemScripts/YhaleiWebbedHand.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 09:01:33
    Script Purpose : 
                   : 
--]]

local LoreAndLegendYhalei = 5429

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendYhalei) and not HasCompletedQuest(Player, LoreAndLegendYhalei) then
OfferQuest(nil, Player, LoreAndLegendYhalei)
elseif not QuestStepIsComplete(Player, LoreAndLegendYhalei, 4) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the yha-lei. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendYhalei, 4)
RemoveItem(Player, 15645)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


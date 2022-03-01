--[[
    Script Name    : ItemScripts/anaviakbeak.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 06:01:38
    Script Purpose : 
                   : 
--]]

local LoreAndLegendAviak = 5419

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendAviak) and not HasCompletedQuest(Player, LoreAndLegendAviak) then
OfferQuest(nil, Player, LoreAndLegendAviak)
elseif not QuestStepIsComplete(Player, LoreAndLegendAviak, 4) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the aviak. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendAviak, 4)
RemoveItem(Player, 3554)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


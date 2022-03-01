--[[
    Script Name    : ItemScripts/adrakotaclaw.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 06:01:13
    Script Purpose : 
                   : 
--]]

local LoreAndLegendDrakota = 5421

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendDrakota) and not HasCompletedQuest(Player, LoreAndLegendDrakota) then
OfferQuest(nil, Player, LoreAndLegendDrakota)
elseif not QuestStepIsComplete(Player, LoreAndLegendDrakota, 4) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the drakota. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendDrakota, 4)
RemoveItem(Player, 1597)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


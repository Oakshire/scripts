--[[
    Script Name    : ItemScripts/adjinntopknot.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.01 08:01:42
    Script Purpose : 
                   : 
--]]

local LoreAndLegendDjinn = 5415

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendDjinn) and not HasCompletedQuest(Player, LoreAndLegendDjinn) then
OfferQuest(nil, Player, LoreAndLegendDjinn)
elseif not QuestStepIsComplete(Player, LoreAndLegendDjinn, 4) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the djinn. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendDjinn, 4)
RemoveItem(Player, 1581)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


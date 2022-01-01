--[[
    Script Name    : ItemScripts/asireneye.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.01 12:01:08
    Script Purpose : 
                   : 
--]]

local LoreAndLegendSiren = 5407

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendSiren) and not HasCompletedQuest(Player, LoreAndLegendSiren) then
OfferQuest(nil, Player, LoreAndLegendSiren)
elseif not QuestStepIsComplete(Player, LoreAndLegendSiren, 7) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the siren. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendSiren, 7)
RemoveItem(Player, 2715)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


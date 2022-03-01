--[[
    Script Name    : ItemScripts/acentaurmane.lua
    Script Author  : AussieGlen
    Script Date    : 2021.12.31 07:12:46
    Script Purpose : 
                   : 
--]]

local LoreAndLegendCentaur = 5399

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendCentaur) and not HasCompletedQuest(Player, LoreAndLegendCentaur) then
OfferQuest(nil, Player, LoreAndLegendCentaur)
elseif not QuestStepIsComplete(Player, LoreAndLegendCentaur, 8) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the centaur. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendCentaur, 8)
RemoveItem(Player, 1342)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


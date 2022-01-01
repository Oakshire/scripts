--[[
    Script Name    : ItemScripts/aghostvileplasm.lua
    Script Author  : AussieGlen
    Script Date    : 2021.12.31 11:12:36
    Script Purpose : 
                   : 
--]]

local LoreAndLegendGhost = 5404

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendGhost) and not HasCompletedQuest(Player, LoreAndLegendGhost) then
OfferQuest(nil, Player, LoreAndLegendGhost)
elseif not QuestStepIsComplete(Player, LoreAndLegendGhost, 4) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the ghost. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendGhost, 4)
RemoveItem(Player, 1767)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


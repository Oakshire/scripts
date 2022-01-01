--[[
    Script Name    : ItemScripts/anefreetibrokenshackle.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.01 09:01:42
    Script Purpose : 
                   : 
--]]

local LoreAndLegendEfreeti = 5416

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendEfreeti) and not HasCompletedQuest(Player, LoreAndLegendEfreeti) then
OfferQuest(nil, Player, LoreAndLegendEfreeti)
elseif not QuestStepIsComplete(Player, LoreAndLegendEfreeti, 6) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the efreeti. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendEfreeti, 6)
RemoveItem(Player, 3564)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end

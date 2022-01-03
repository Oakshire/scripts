--[[
    Script Name    : ItemScripts/DiZokSkin.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 10:01:10
    Script Purpose : 
                   : 
--]]

local LoreAndLegendDizok = 5431

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendDizok) and not HasCompletedQuest(Player, LoreAndLegendDizok) then
OfferQuest(nil, Player, LoreAndLegendDizok)
elseif not QuestStepIsComplete(Player, LoreAndLegendDizok, 7) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the di'zok. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendDizok, 7)
RemoveItem(Player, 6416)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


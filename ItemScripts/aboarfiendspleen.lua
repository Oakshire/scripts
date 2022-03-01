--[[
    Script Name    : ItemScripts/aboarfiendspleen.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 10:01:32
    Script Purpose : 
                   : 
--]]

local LoreAndLegendBoarfiend = 5432

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendBoarfiend) and not HasCompletedQuest(Player, LoreAndLegendBoarfiend) then
OfferQuest(nil, Player, LoreAndLegendBoarfiend)
elseif not QuestStepIsComplete(Player, LoreAndLegendBoarfiend, 7) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the boarfiend. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendBoarfiend, 7)
RemoveItem(Player, 1253)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


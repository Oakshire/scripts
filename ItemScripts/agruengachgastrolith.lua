--[[
    Script Name    : ItemScripts/agruengachgastrolith.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 11:01:17
    Script Purpose : 
                   : 
--]]

local LoreAndLegendGruengach = 5434

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendGruengach) and not HasCompletedQuest(Player, LoreAndLegendGruengach) then
OfferQuest(nil, Player, LoreAndLegendGruengach)
elseif not QuestStepIsComplete(Player, LoreAndLegendGruengach, 4) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the gruengach. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendGruengach, 4)
RemoveItem(Player, 1883)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


--[[
    Script Name    : ItemScripts/acyclopstongue.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.01 06:01:45
    Script Purpose : 
                   : 
--]]

local LoreAndLegendCyclops = 5414

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendCyclops) and not HasCompletedQuest(Player, LoreAndLegendCyclops) then
OfferQuest(nil, Player, LoreAndLegendCyclops)
elseif not QuestStepIsComplete(Player, LoreAndLegendCyclops, 6) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the cyclops. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendCyclops, 6)
RemoveItem(Player, 1492)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end

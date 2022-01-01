--[[
    Script Name    : ItemScripts/agolemcorporealshell.lua
    Script Author  : AussieGlen
    Script Date    : 2021.12.31 11:12:58
    Script Purpose : 
                   : 
--]]

local LoreAndLegendGolem = 5405

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendGolem) and not HasCompletedQuest(Player, LoreAndLegendGolem) then
OfferQuest(nil, Player, LoreAndLegendGolem)
elseif not QuestStepIsComplete(Player, LoreAndLegendGolem, 5) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the golem. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendGolem, 5)
RemoveItem(Player, 1851)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


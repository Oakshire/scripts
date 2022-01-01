--[[
    Script Name    : ItemScripts/alizardmanscale.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.01 04:01:23
    Script Purpose : 
                   : 
--]]

local LoreAndLegendLizardman = 5412

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendLizardman) and not HasCompletedQuest(Player, LoreAndLegendLizardman) then
OfferQuest(nil, Player, LoreAndLegendLizardman)
elseif not QuestStepIsComplete(Player, LoreAndLegendLizardman, 5) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the lizardman. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendLizardman, 5)
RemoveItem(Player, 2028)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


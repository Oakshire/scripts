--[[
    Script Name    : ItemScripts/DrolvargPatchofFur.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 08:01:15
    Script Purpose : 
                   : 
--]]

local LoreAndLegendDrolvarg = 5427

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendDrolvarg) and not HasCompletedQuest(Player, LoreAndLegendDrolvarg) then
OfferQuest(nil, Player, LoreAndLegendDrolvarg)
elseif not QuestStepIsComplete(Player, LoreAndLegendDrolvarg, 7) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the drolvarg. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendDrolvarg, 7)
RemoveItem(Player, 6589)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


--[[
    Script Name    : ItemScripts/aclockworkoculardevice.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 06:01:48
    Script Purpose : 
                   : 
--]]

local LoreAndLegendClockwork = 5420

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendClockwork) and not HasCompletedQuest(Player, LoreAndLegendClockwork) then
OfferQuest(nil, Player, LoreAndLegendClockwork)
elseif not QuestStepIsComplete(Player, LoreAndLegendClockwork, 7) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the clockwork. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendClockwork, 7)
RemoveItem(Player, 1378)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


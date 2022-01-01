--[[
    Script Name    : ItemScripts/anightbloodinfernoeye.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.01 12:01:22
    Script Purpose : 
                   : 
--]]

local LoreAndLegendNightblood = 5406

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendNightblood) and not HasCompletedQuest(Player, LoreAndLegendNightblood) then
OfferQuest(nil, Player, LoreAndLegendNightblood)
elseif not QuestStepIsComplete(Player, LoreAndLegendNightblood, 5) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the nightblood. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendNightblood, 5)
RemoveItem(Player, 1002)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end

--[[
    Script Name    : ItemScripts/abugbearhand.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 08:01:23
    Script Purpose : 
                   : 
--]]

local LoreAndLegendBugbear = 5426

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendBugbear) and not HasCompletedQuest(Player, LoreAndLegendBugbear) then
OfferQuest(nil, Player, LoreAndLegendBugbear)
elseif not QuestStepIsComplete(Player, LoreAndLegendBugbear, 6) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the bugbear. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendBugbear, 6)
RemoveItem(Player, 1313)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


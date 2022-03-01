--[[
    Script Name    : ItemScripts/agnolleye.lua
    Script Author  : AussieGlen
    Script Date    : 2021.12.31 07:12:42
    Script Purpose : 
                   : 
--]]

local LoreAndLegendGnoll = 5398

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendGnoll) and not HasCompletedQuest(Player, LoreAndLegendGnoll) then
OfferQuest(nil, Player, LoreAndLegendGnoll)
elseif not QuestStepIsComplete(Player, LoreAndLegendGnoll, 7) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the gnoll. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendGnoll, 7)
RemoveItem(Player, 1818)
CloseItemConversation()
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end

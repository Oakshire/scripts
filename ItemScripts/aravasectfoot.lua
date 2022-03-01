--[[
    Script Name    : ItemScripts/aravasectfoot.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 07:01:08
    Script Purpose : 
                   : 
--]]

local LoreAndLegendRavasect = 5424

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendRavasect) and not HasCompletedQuest(Player, LoreAndLegendRavasect) then
OfferQuest(nil, Player, LoreAndLegendRavasect)
elseif not QuestStepIsComplete(Player, LoreAndLegendRavasect, 5) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the ravasect. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendRavasect, 5)
RemoveItem(Player, 2503)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


--[[
    Script Name    : ItemScripts/adecomposingzombieorgan.lua
    Script Author  : AussieGlen
    Script Date    : 2021.12.31 06:12:28
    Script Purpose : 
                   : 
--]]

local LoreAndLegendZombie = 5397

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendZombie) and not HasCompletedQuest(Player, LoreAndLegendZombie) then
OfferQuest(nil, Player, LoreAndLegendZombie)
elseif not QuestStepIsComplete(Player, LoreAndLegendZombie, 7) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the zombie. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendZombie, 7)
RemoveItem(Player, 1553)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


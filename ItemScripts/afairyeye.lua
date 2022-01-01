--[[
    Script Name    : ItemScripts/afairyeye.lua
    Script Author  : AussieGlen
    Script Date    : 2021.12.31 09:12:52
    Script Purpose : 
                   : 
--]]

local LoreAndLegendFairy = 5403

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendFairy) and not HasCompletedQuest(Player, LoreAndLegendFairy) then
OfferQuest(nil, Player, LoreAndLegendFairy)
elseif not QuestStepIsComplete(Player, LoreAndLegendFairy, 5) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the fairy. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendFairy, 5)
RemoveItem(Player, 1639)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


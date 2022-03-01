--[[
    Script Name    : ItemScripts/abrowniefinger.lua
    Script Author  : AussieGlen
    Script Date    : 2021.12.29 07:12:08
    Script Purpose : 
                   : 
--]]

local LoreAndLegendBrownie = 5395

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendBrownie) and not HasCompletedQuest(Player, LoreAndLegendBrownie) then
OfferQuest(nil, Player, LoreAndLegendBrownie)
elseif not QuestStepIsComplete(Player, LoreAndLegendBrownie, 7) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the brownie. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendBrownie, 7)
RemoveItem(Player, 1304)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


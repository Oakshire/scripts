--[[
    Script Name    : ItemScripts/AnOrcSkin.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.20 09:06:38
    Script Purpose : Item Script for Lore and Legend:Orc Quest
                   : 
--]]

local LoreAndLegendOrc = 5257

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendOrc) and not HasCompletedQuest(Player, LoreAndLegendOrc) then
OfferQuest(nil, Player, LoreAndLegendOrc)
elseif not QuestStepIsComplete(Player, LoreAndLegendOrc, 5) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the orc. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendOrc, 5)
RemoveItem(Player, 3800)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end
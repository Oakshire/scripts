--[[
    Script Name    : ItemScripts/AnOrcEye.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.20 09:06:00
    Script Purpose : Item Script for Lore and Legend:Orc Quest
                   : 
--]]

local LoreAndLegendOrc = 5257

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendOrc) and not HasCompletedQuest(Player, LoreAndLegendOrc) then
OfferQuest(nil, Player, LoreAndLegendOrc)
elseif not QuestStepIsComplete(Player, LoreAndLegendOrc, 4) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the orc. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendOrc, 4)
RemoveItem(Player, 3798)
end


function item_description(Item, Player)
   if  QuestStepIsComplete(Player, LoreAndLegendOrc, 4) then
   return "You have already examined this item."
end
   end
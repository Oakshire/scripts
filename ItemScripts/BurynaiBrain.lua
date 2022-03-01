--[[
    Script Name    : ItemScripts/BurynaiBrain.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 10:01:11
    Script Purpose : 
                   : 
--]]

local LoreAndLegendBurynai = 5430

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendBurynai) and not HasCompletedQuest(Player, LoreAndLegendBurynai) then
OfferQuest(nil, Player, LoreAndLegendBurynai)
elseif not QuestStepIsComplete(Player, LoreAndLegendBurynai, 7) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the burynai. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendBurynai, 7)
RemoveItem(Player, 4741)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


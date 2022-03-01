--[[
    Script Name    : ItemScripts/awerewolfspine.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 08:01:13
    Script Purpose : 
                   : 
--]]

local LoreAndLegendWerewolf = 5425

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendWerewolf) and not HasCompletedQuest(Player, LoreAndLegendWerewolf) then
OfferQuest(nil, Player, LoreAndLegendWerewolf)
elseif not QuestStepIsComplete(Player, LoreAndLegendWerewolf, 6) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the werewolf. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendWerewolf, 6)
RemoveItem(Player, 3245)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end

--[[
    Script Name    : ItemScripts/aminotaurhand.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 07:01:26
    Script Purpose : 
                   : 
--]]

local LoreAndLegendMinotaur = 5423

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendMinotaur) and not HasCompletedQuest(Player, LoreAndLegendMinotaur) then
OfferQuest(nil, Player, LoreAndLegendMinotaur)
elseif not QuestStepIsComplete(Player, LoreAndLegendMinotaur, 8) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the minotaur. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendMinotaur, 8)
RemoveItem(Player, 2248)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


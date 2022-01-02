--[[
    Script Name    : ItemScripts/avampiricincisor.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 12:01:21
    Script Purpose : 
                   : 
--]]

local LoreAndLegendVampire = 5413

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendVampire) and not HasCompletedQuest(Player, LoreAndLegendVampire) then
OfferQuest(nil, Player, LoreAndLegendVampire)
elseif not QuestStepIsComplete(Player, LoreAndLegendVampire, 4) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the vampire. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendVampire, 4)
RemoveItem(Player, 3037)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


--[[
    Script Name    : ItemScripts/DrachnidHead.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.02 09:01:35
    Script Purpose : 
                   : 
--]]

local LoreAndLegendDrachnid = 5428

function examined(Item, Player)
if not HasQuest(Player, LoreAndLegendDrachnid) and not HasCompletedQuest(Player, LoreAndLegendDrachnid) then
OfferQuest(nil, Player, LoreAndLegendDrachnid)
elseif not QuestStepIsComplete(Player, LoreAndLegendDrachnid, 6) then
conversation = CreateConversation()    
AddConversationOption(conversation, "Begin to study...", "Step_Complete")
AddConversationOption(conversation, "No, put away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the drachnid. Do you wish to study it?")
end
   end

function Step_Complete(Item, Player)
SetStepComplete(Player, LoreAndLegendDrachnid, 6)
RemoveItem(Player, 6531)
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end


--[[
    Script Name    : ItemScripts/GoblinAttackPlan.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.20 02:09:29
    Script Purpose : 
                   : 
--]]
local saboteur = 5748
function examined(Item, Player)
    conversation = CreateConversation()
    if not HasQuest(Player, saboteur) and not HasCompletedQuest(Player,saboteur) then
    AddConversationOption(conversation, "[Inspect the map further]", "QuestStart")
    end
    AddConversationOption(conversation, "[Put the parchment away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "The note is tattered and wrinkled with dirt smudges here and there.  There are crude scrawlings and scribbles all over the page.  You may be able to make some of it out.")
end

function QuestStart(Item,Player)
    OfferQuest(Item,Player,saboteur)
end
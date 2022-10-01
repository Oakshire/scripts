--[[
    Script Name    : ItemScripts/FallenPiratesMap.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.20 12:09:47
    Script Purpose : 
                   : 
--]]
local Xspot = 5747

function examined(Item, Player)
    conversation = CreateConversation()
    if not HasQuest(Player, Xspot) and not HasCompletedQuest(Player,Xspot) then
    AddConversationOption(conversation, "[Inspect the map further]", "Dialog1")
    end
    AddConversationOption(conversation, "[Put the map away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "You have in your hands what appears to be a crude map of the island.  There is a marking on the map with a large X.  There is also some scribbling as well.")

end

function Dialog1(Item,Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Pursue the X on the map]", "QuestStart")
    AddConversationOption(conversation, "[Put the map away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "The X on the map seems to be placed just east of a waterfall on the map in the north east corner of the island.  Markings also show a large tree and cave close by.  You can make out the writing to say, \"Rockbelly's resting place\".")
end

function QuestStart(Item,Player)
    CloseItemConversation(Item,Player)
    if not HasQuest(Player,Xspot) then
        OfferQuest(nil,Player,Xspot)
    end
end
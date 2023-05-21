--[[
    Script Name    : ItemScripts/AWantedPoster.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.19 01:05:03
    Script Purpose : 
                   : 
--]]
local Quest = 5835

function examined(Item, Player)
	if not HasCompletedQuest(Player,Quest) then
    Dialog1(Item,Player)
    else
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "These mutated creatures do not belong here!", "Offer")
    end
    AddConversationOption(conversation, "[Keep the poster in your bags.]")
    AddConversationOption(conversation, "[Toss the poster. You've taken care of the gnolls.]", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "This weathered poster is identical to one you worked with before. There must have been countless of them posted about.")
	end
end


function Dialog1(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "[Unfurl the poster.]", "Dialog2")
    end
    AddConversationOption(conversation, "[Put the poster away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "Time has not been kind to this rolled-up poster. The edges are frayed and splottched from moisture.")
end


function Dialog2(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "[Pursue the gnolls!]", "Offer")
    end
    AddConversationOption(conversation, "[Put the poster away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This is obviously an old wanted poster with images of gnoll faces across the top. You can make out some of the words.\n\n\"WANTED!\"\n\n\"Darkpaw gnolls have pillaged Antonica farmlands and must be dealt with!\"\n\n Unfortunately any mention of a reward has worn away.")
end

function Offer(Item,Player)
    if CanReceiveQuest(Player,Quest) then
    OfferQuest(nil,Player,Quest)
    end
    CloseItemConversation(Item,Player)
end

function QuestFinish(Item,Player)
    CloseItemConversation(Item,Player)
    if HasItem(Player,3213) then
        RemoveItem(Player,3213,1)
    end
end
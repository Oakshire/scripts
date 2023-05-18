--[[
    Script Name    : ItemScripts/CaltorsisClericPage14.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.18 02:05:28
    Script Purpose : 
                   : 
--]]

local Quest = 5839

function examined(Item, Player)
	if not HasCompletedQuest(Player,Quest) then
    Dialog1(Item,Player)
    else
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "These undead should have learned their lesson!", "Offer")
    end
    AddConversationOption(conversation, "[Roll up the page and put it away.]")
    AddConversationOption(conversation, "[Get rid of it. You've already learned what you can.]", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "This old page appears to be part of a journal that has long since been torn away.")
	end
end


function Dialog1(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "[Try to read the page]", "Dialog2")
    end
    AddConversationOption(conversation, "[Put the page away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This old page appears to be part of a journal that has long since been torn away.")
end


function Dialog2(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "The Caltorsis clerics will not be around much longer.", "Offer")
    end
    AddConversationOption(conversation, "[Put the page away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "I have the journal entry of a Paladin named Grentithius. It reads: \"I'm concerned about the undead population in this area. Left unchecked, they may prove to be the end of our great city. I should destroy the more powerful undead to cull their numbers.\"")
end

function Offer(Item,Player)
    if CanReceiveQuest(Player,Quest) then
    OfferQuest(nil,Player,Quest)
    end
    CloseItemConversation(Item,Player)
end

function QuestFinish(Item,Player)
    CloseItemConversation(Item,Player)
    if HasItem(Player,1001094) then
        RemoveItem(Player,1001094,1)
    end
end
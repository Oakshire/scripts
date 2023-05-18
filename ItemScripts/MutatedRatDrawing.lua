--[[
    Script Name    : ItemScripts/MutatedRatDrawing.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.17 01:05:51
    Script Purpose : 
                   : 
--]]
local Quest = 5834

function examined(Item, Player)
	if not HasCompletedQuest(Player,Quest) then
    Dialog1(Item,Player)
    else
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "These mutated creatures do not belong here!", "Offer")
    end
    AddConversationOption(conversation, "[Roll up the drawing and keep it.]")
    AddConversationOption(conversation, "[Get rid of it. You have done all you can against the rats for now.]", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "This is a similar child's drawing of mutated rats eating a family you've seen before. It still turns your stomach to see it.")
	end
end


function Dialog1(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "[Look closely at the drawing.]", "Dialog2")
    end
    AddConversationOption(conversation, "[Put the drawing away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This appears to be a crude drawing consisting of greens, browns, and reds - similar to that of child's.")
end


function Dialog2(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "This poor child... I must avenge this child's family!", "Offer")
    AddConversationOption(conversation, "These mutated creatures have no place here. I must kill them!", "Offer")
    end
    AddConversationOption(conversation, "[Put the drawing away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "The drawing depicts a gruesome scene with rats devouring a family on the ground while a child is crying near by. The rats look strange, with scorpion-like tails and glowing red eyes. This poor child must have witness this to draw it so accurately.")
end

function Offer(Item,Player)
    if CanReceiveQuest(Player,Quest) then
    OfferQuest(nil,Player,Quest)
    end
    CloseItemConversation(Item,Player)
end

function QuestFinish(Item,Player)
    CloseItemConversation(Item,Player)
    if HasItem(Player,11780) then
        RemoveItem(Player,11780,1)
    end
end
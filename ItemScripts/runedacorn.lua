--[[
	Script Name	: ItemScripts/runedacorn.lua
	Script Purpose	:
	Script Author	: Dorbin
	Script Date	    : 05/17/2023
	Script Notes	:
--]]

local Quest = 233


function examined(Item, Player)
	if CanReceiveQuest(Player,Quest) then
    Dialog1(Item,Player)
    else
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Keep the acorn.]")
    AddConversationOption(conversation, "[Toss the acorn to the ground.]", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "This acorn is familiar to you. You helped cleanse some of the corruption from the Oakmyst Forest as the runes requested.")
	end
end


function Dialog1(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "[Clean away the grime]", "Dialog2")
    end
    AddConversationOption(conversation, "[Put the acorn away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This large acorn is covered in a foul grime.")
end

function Dialog2(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "I must free the souls of corrupted dryads!", "Offer")
    end
    AddConversationOption(conversation, "[Put the acorn away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "Deep runes on the acorn's surface read: \n\n\"Wounds of chaos encircle me. Invisible mouths murmur my curse. I curl to seed, fleeing the festering soil. Child of Elddar, free my corrupted shell... cleanse this thicket of the corruption.\"")
end

function Offer(Item,Player)
    if CanReceiveQuest(Player,Quest) then
    OfferQuest(nil,Player,Quest)
    end
    CloseItemConversation(Item,Player)
end



function QuestFinish(Item,Player)
    CloseItemConversation(Item,Player)
    if HasItem(Player,1001093) then
        RemoveItem(Player,1001093,1)
    end
end
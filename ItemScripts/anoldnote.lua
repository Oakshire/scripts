--[[
	Script Name	: ItemScripts/anoldnote.lua
	Script Purpose	:
	Script Author	: Dorbin
	Script Date	    : 05/17/2023
	Script Notes	:
--]]


local Quest = 235



function examined(Item, Player)
	if CanReceiveQuest(Player,Quest) then
    Dialog1(Item,Player)
    else
    AddConversationOption(conversation, "[Keep the old note as a keepsake.]")
    AddConversationOption(conversation, "[Toss the note in the wind. You no longer need it.]", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "You've read this note already. \n\n \"May Tunare bless your life, as she has blessed mine.  My name is Phyndin Silverystream.  I've since left this forest,...\"")
	end
end

function Dialog1(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    OfferQuest(nil,Player,Quest)
    end
    if GetQuestStep(Player,Quest)==2 then
    AddConversationOption(conversation, "[Read the note.]", "Dialog2")
    end
    AddConversationOption(conversation, "[Put the note away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "To whomever finds this note: May Tunare bless your life, as she has blessed mine.  My name is Phyndin Silverystream.  I've since left this forest, but I left behind a token of my life here.  If you found this note on my furry friend, then I believe you worthy enough to carry it--should you find it.  Check the tree in the stream...")
end

function Dialog2(Item,Player)
    conversation = CreateConversation()
    if GetQuestStep(Player,Quest)==2 then
    SetStepComplete(Player,Quest,2)
    end    
    AddConversationOption(conversation, "[Put the note and map away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "Though penned crudely, the map seems fairly easy to follow.  By tracing the river through the map, you manage to make out that the spot marked on it is a fairly large tree overlooking the waterfall. A small fern is shown growing next to the tree, though depending on how long ago this map was made, the fern could be gone by now.")
end

function QuestFinish(Item,Player)
    CloseItemConversation(Item,Player)
    if HasItem(Player,3776) then
        RemoveItem(Player,3776,1)
    end
end
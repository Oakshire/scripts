--[[
    Script Name    : ItemScripts/AGnollsDoll.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.17 07:05:00
    Script Purpose : 
                   : 
--]]
local Quest = 5838

function examined(Item, Player)
	if not HasCompletedQuest(Player,Quest) then
    Dialog1(Item,Player)
    else
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "These gnolls and their dark magic must stop!","Offer")
    end
    AddConversationOption(conversation, "[Keep the little stuffed animal in your bag.]")
    AddConversationOption(conversation, "[Drop it. You've done enough gnoll hunting.]", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "This doll is similar to one you've seen before. The dark magics it was used for still infuriate you!")
	end
end


function Dialog1(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "[Look closely at the stuffed animal.]", "Dialog2")
    end
    AddConversationOption(conversation, "[Put the stuffed animal away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This is a cute little stuffed animal.")
end


function Dialog2(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "Antonica would be a safer place with fewer Darkpaw Mystics.", "Offer")
    end
    AddConversationOption(conversation, "[Put the stuffed animal away away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This small stuffed animal looks to have been a human child's toy at one-time.  The toy looks to have been used in some ritual magic as it has many bite marks and bone powder caking its surface.")

end

function Offer(Item,Player)
    if CanReceiveQuest(Player,Quest) then
    OfferQuest(nil,Player,Quest)
    end
    CloseItemConversation(Item,Player)
end

function QuestFinish(Item,Player)
    CloseItemConversation(Item,Player)
    if HasItem(Player,1825) then
        RemoveItem(Player,1825,1)
    end
end
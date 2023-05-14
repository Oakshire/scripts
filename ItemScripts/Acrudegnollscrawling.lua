--[[
    Script Name    : ItemScripts/Acrudegnollscrawling.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.13 05:05:06
    Script Purpose : 
                   : 
--]]
quest = 5644


function examined(Item, Player)
conversation = CreateConversation()
if CanReceiveQuest(Player,quest) then
AddConversationOption(conversation, "Warn Walcott.","QuestStart")
end
AddConversationOption(conversation, "Put the scroll away.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The crude scrawling seems to be a map. It shows four crop fields with the name Walcott scrawled on it. Just to the west of the fields is the drawing of a gate and castle beyond a wall.")
end

function QuestStart(Item,Player)
	    CloseItemConversation(Item,Player)
		OfferQuest(nil, Player, quest)
end


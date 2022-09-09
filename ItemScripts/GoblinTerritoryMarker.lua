--[[
    Script Name    : ItemScripts/GoblinTerritoryMarker.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.29 02:05:51
    Script Purpose : Classic Version of quest examination
                   : 
--]]

local LANGUAGE_QUEST = 5568

function examined(Item, Player)
conversation = CreateConversation()
if not HasQuest(Player, LANGUAGE_QUEST) or GetQuestStep(Player,LANGUAGE_QUEST)==1 then
AddConversationOption(conversation, "Closely inspect the territory marker.", "Study")
end
AddConversationOption(conversation, "Hold on to the territory marker for use later","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This plank looks like it is part of a goblin signpost. There are words on it written both in Norrathian and some other indecipherable script. It seems to be a goblin territory marker. ")
end


function Study(Item,Player)
	    CloseItemConversation(Item,Player)
	if not HasQuest(Player, LANGUAGE_QUEST) then
		OfferQuest(nil, Player, LANGUAGE_QUEST)
    else
	    CloseItemConversation(Item,Player)
        RemoveItem(Player,7832,1) --territory marker
        SummonItem(Player,13528)-- studied territory marker
conversation = CreateConversation()
AddConversationOption(conversation, "Put away the studied marker.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "With what little of the note appeared in both languages you were able to study it and gain a better understanding of the goblin language.")
end
end

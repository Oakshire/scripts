--[[
    Script Name    : ItemScripts/ThulianPuzzleBox.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 04:06:12
    Script Purpose : 
                   : 
--]]

local LANGUAGE_QUEST = 5573

function examined(Item, Player)
conversation = CreateConversation()
if not HasQuest(Player, LANGUAGE_QUEST) or GetQuestStep(Player,LANGUAGE_QUEST)==1 then
AddConversationOption(conversation, "Study the shapes and symbols closely.", "Study")
end
AddConversationOption(conversation, "Hold on to the puzzle box for use later.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The symbols on this box are twisted on forms next to Norrathian words, possibly as part of some ritual.  You might be able to make out what is referenced if you could study more of these.")
end


function Study(Item,Player)
	    CloseItemConversation(Item,Player)
	if not HasQuest(Player, LANGUAGE_QUEST) then
		OfferQuest(nil, Player, LANGUAGE_QUEST)
    else
  	    CloseItemConversation(Item,Player)
        RemoveItem(Player,14444,1) --puzzle box
        SummonItem(Player,13530)-- studied puzzle box
	end
end
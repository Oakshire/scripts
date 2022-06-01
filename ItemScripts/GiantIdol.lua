--[[
    Script Name    : ItemScripts/GiantIdol.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 04:06:31
    Script Purpose : 
                   : 
--]]

local LANGUAGE_QUEST = 5574

function examined(Item, Player)
conversation = CreateConversation()
if not HasQuest(Player, LANGUAGE_QUEST) or GetQuestStep(Player,LANGUAGE_QUEST)==1 then
AddConversationOption(conversation, "Compare the markings closely.", "Study")
end
AddConversationOption(conversation, "Hold on to the idol for use later.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The crude shapes on this idol seem to depict a simplistic, but obviously old language.  You could compare the pictographic images to Norrathian if you had more of these to study.")
end


function Study(Item,Player)
	    CloseItemConversation(Item,Player)
	if not HasQuest(Player, LANGUAGE_QUEST) then
		OfferQuest(nil, Player, LANGUAGE_QUEST)
    else
  	    CloseItemConversation(Item,Player)
        RemoveItem(Player,7671,1) --puzzle box
        SummonItem(Player,13527)-- studied puzzle box
	end
end
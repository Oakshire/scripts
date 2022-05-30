--[[
    Script Name    : ItemScripts/OrcSmugglerRequisition_classic.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.29 10:05:01
    Script Purpose : 
                   : 
--]]

local LANGUAGE_QUEST = 5569

function examined(Item, Player)
conversation = CreateConversation()
if not HasQuest(Player, LANGUAGE_QUEST) or GetQuestStep(Player,LANGUAGE_QUEST)==1 then
AddConversationOption(conversation, "Compare the Norrathian and orcish symbols closely.", "Study")
end
AddConversationOption(conversation, "Hold on to the requisition order for use later.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This smuggler requiisition appears to be written in Norrathian and pictograms from what is most likely orcish.  If I found a few more of these orders I could understand some of the basics of the orcish language.")
end


function Study(Item,Player)
	    CloseItemConversation(Item,Player)
	if not HasQuest(Player, LANGUAGE_QUEST) then
		OfferQuest(nil, Player, LANGUAGE_QUEST)
    else
        RemoveItem(Player,10202,1) --smuggler requisition
        SummonItem(Player,13529)-- studied smuggler requisition
	    CloseItemConversation(Item,Player)
	end
end

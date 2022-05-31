--[[
	Script Name	: ItemScripts/FabricPatch.lua
	Script Purpose	: Offers and updates the language quest, "The Patchwork Tapestry"
	Script Author	: Dorbin
	Script Date	: 2022.05.28
	Script Notes	: 
--]]

local LANGUAGE_QUEST = 5566

function examined(Item, Player)
conversation = CreateConversation()
if not HasQuest(Player, LANGUAGE_QUEST) or GetQuestStep(Player,LANGUAGE_QUEST)==1 then
AddConversationOption(conversation, "Closely inspect the fabric patch.", "Study")
end
AddConversationOption(conversation, "Hold on to the fabric for use later.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This is a patch of fay fabric. There is print upon the fabric revealing letters in Norrathian and some other language before the script is lost in a rip in the fine fabric.")
end


function Study(Item,Player)
	    CloseItemConversation(Item,Player)
	if not HasQuest(Player, LANGUAGE_QUEST) then
		OfferQuest(nil, Player, LANGUAGE_QUEST)
    else
  	    CloseItemConversation(Item,Player)
        RemoveItem(Player,7003,1) --fabric patch
        SummonItem(Player,13526)-- studied fabric patch
	end
end

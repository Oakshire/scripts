--[[
    Script Name    : ItemScripts/EbonStormGem.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 12:06:09
    Script Purpose : 
                   : 
--]]


local LANGUAGE_QUEST = 5575

function examined(Item, Player)
conversation = CreateConversation()
if not HasQuest(Player, LANGUAGE_QUEST) or GetQuestStep(Player,LANGUAGE_QUEST)==1 then
AddConversationOption(conversation, "Embrace the gem tightly.", "Study")
end
AddConversationOption(conversation, "Stifle the voices for now.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The surface of the gem swirls in your hand.  Faint whispers fog your senses, as if the gem is speaking to you.  If you found more of these, perhaps the whispers would become clearer.")
end


function Study(Item,Player)
	    CloseItemConversation(Item,Player)
	if not HasQuest(Player, LANGUAGE_QUEST) then
		OfferQuest(nil, Player, LANGUAGE_QUEST)
    else
  	    CloseItemConversation(Item,Player)
        RemoveItem(Player,6663,1) --ebon storm gem
        SummonItem(Player,15153)-- vacant ebon storm gem
	end
end


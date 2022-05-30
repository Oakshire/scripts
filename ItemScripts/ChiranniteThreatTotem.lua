--[[
	Script Name	: ItemScripts/ChiranniteThreatTotem.lua
	Script Purpose	: Offers quest "Bark Like a Gnoll"
	Script Author	: premierio015/Dorbin(classic)
	Script Date	    : 04.06.2020
	Script Notes	: 
--]]




local LANGUAGE_QUEST = 5567

function examined(Item, Player)
conversation = CreateConversation()
if not HasQuest(Player, LANGUAGE_QUEST) or GetQuestStep(Player,LANGUAGE_QUEST)==1 then
AddConversationOption(conversation, "Closely examine the chirannite totem.", "Study")
end
AddConversationOption(conversation, "Hold on to the totem for use later","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The deep slashed markings on this gnollish totem are intriguing.  They appear to have been carved into Examining others for comparison could help me comprehend their meaning.")
end


function Study(Item,Player)
	if not HasQuest(Player, LANGUAGE_QUEST) then
	    CloseItemConversation(Item,Player)
		OfferQuest(nil, Player, LANGUAGE_QUEST)
    else
  	    CloseItemConversation(Item,Player)
        RemoveItem(Player,4963,1) --fabric patch
        SummonItem(Player,13525)-- studied fabric patch
	end
end




--[[ New Quest Version (post DoF)
local quest = 563

function examined(Item, Player)
	if not HasQuest(Player, quest) and not HasCompletedQuest(Player, quest) then
		OfferQuest(nil, Player, quest)
	elseif HasCompletedQuest(Player, quest) then
	    RemoveItem(Player, 4963)
end
   end]]--
     
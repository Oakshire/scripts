--[[
    Script Name    : ItemScripts/TransferenceDirective.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 01:06:57
    Script Purpose : 
                   : 
--]]

local LANGUAGE_QUEST = 5576

function examined(Item, Player)
conversation = CreateConversation()
if not HasQuest(Player, LANGUAGE_QUEST) or GetQuestStep(Player,LANGUAGE_QUEST)==1 then
AddConversationOption(conversation, "Compare the glyphs and Norrathian closely.", "Study")
end
AddConversationOption(conversation, "Keep the parchment safe for later.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This parchment has various shimmering glyphs next to Norrathian words. The glyphs appear to transend the depths of the paper, as if a their lines decsend a dark limitless space.  If you had more of them, you could learn to decipher the glyphs.")
end


function Study(Item,Player)
	    CloseItemConversation(Item,Player)
	if not HasQuest(Player, LANGUAGE_QUEST) then
		OfferQuest(nil, Player, LANGUAGE_QUEST)
    else
  	    CloseItemConversation(Item,Player)
        RemoveItem(Player,14586,1) --Transference Directive
        SummonItem(Player,13531)-- studied Transference Directive
	end
end
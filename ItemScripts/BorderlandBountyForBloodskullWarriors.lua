--[[
	Script Name	: ItemScripts/BorderlandBountyForBloodskullWarriors.lua
	Script Purpose	: Offers quest "Bloodskull Orc Bounty"
	Script Author	: premierio015
	Script Date	    : 27.02.2021
	Script Notes	:  
--]]

local quest = 5218 -- Bloodskull Orc Bounty quest ID

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Read On", "ReadOn")
AddConversationOption(conversation, "Save the bounty.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Attention all Freeportians! By order of the Overlord, all able bodied citizens must aid Freeport by removing the Bloodskull orcs from our outlying lands. It is your duty as a citizen of Freeport to stop them before they infest our land. Take down their clan before they organize against all Norrathians.")
end
  


function ReadOn(Item, Player)
    conversation = CreateConversation()
    if not HasQuest(Player, quest) then
    OfferQuest(nil, Player, quest)
    end
    AddConversationOption(conversation, "Save the bounty.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "The Overlord calls upon all Norrathians to do their part! A bounty has been placed on the heads of these vile beasts. Any person brave enough to fell a Bloodskull orc shall collect and present these earrings. Presenting these earrings to the Freeport Militia will prove your strength and allegiance. - - Captain Vrondell, Freeport Militia, Borderland Brigade ''For Freeport and Realm'' ")
end
    

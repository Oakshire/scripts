--[[
    Script Name    : ItemScripts/BorderlandBountyforDervishCutthroats.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 07:05:17
    Script Purpose : 
                   : 
--]]




local quest = 416 -- Bandish Sash Bounty Quest

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Read On", "ReadOn")
AddConversationOption(conversation, "Save the bounty.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Attention all Freeportians! By order of the Overlord, all able bodied citizens must aid Freeport by removing the dervish peoples found in our outlying lands. Anyone found in our surrounding lands that isn't a citizen of Freeport is an enemy of the Overlord.")
end
  


function ReadOn(Item, Player)
    conversation = CreateConversation()
    if not HasQuest(Player, quest) then
    OfferQuest(nil, Player, quest)
    end
    AddConversationOption(conversation, "Save the bounty.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "Those who reap illegal gains upon the crossroads of the Overlord's territories will suffer the penalty of death. A bounty will be rewarded to those who can present twenty dervish sashes. - Captain Vrondell, Freeport Militia, Borderland Brigade ''For Freeport and Realm''")
end
    

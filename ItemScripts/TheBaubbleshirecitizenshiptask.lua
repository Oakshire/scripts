--[[
    Script Name    : ItemScripts/TheBaubbleshirecitizenshiptask.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.01 12:09:16
    Script Purpose : 
                   : 
--]]

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "[read more]","Dialog2")
StartDialogConversation(conversation, 2, Item, Player, "By order of the Circle of Five, all residents wishing to become a full member of the city must complete a trial to prove their worth.")

end


function Dialog2(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "[read about where tokens are found]","Dialog3")
StartDialogConversation(conversation, 2, Item, Player, "Tokens are scattered throughout the surrounding area. You must find five of these tokens to earn the right to speak to a city official.")
end

function Dialog3(Item, Player)
conversation = CreateConversation()
if not HasQuest(Player,5718) and not HasCompletedQuest(Player,5718)then
AddConversationOption(conversation, "[read more]","Dialog4")
end
StartDialogConversation(conversation, 2, Item, Player, "Each village has been assigned an area in which to hunt for their tokens. Only tokens from within that area will be accepted.")
end

function Dialog4(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "[write this in your quest journal]","StartQuest")
AddConversationOption(conversation, "[put the note away]","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Baubbleshire residents must gather five tokens from the Forest Ruins.")
end

function StartQuest(Item,Player)
    OfferQuest(Item,Player,5718)
conversation = CreateConversation()
AddConversationOption(conversation, "[Put the note]","CloseItemConversation")
StartDialogConversation(conversation, 2, QuestGiver, Player, "After you complete your task, report to Marshal Glorfel using the citizenship sign.")
end
--[[
    Script Name    : ItemScripts/StarcrestCommunecitizenshiptask.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.01 04:09:38
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
AddConversationOption(conversation, "[read more]","Dialog4")

StartDialogConversation(conversation, 2, Item, Player, "Each village has been assigned an area in which to hunt for their tokens. Only tokens from within that area will be accepted.")
end

function Dialog4(Item, Player)
conversation = CreateConversation()
if GetLevel(Player)<6 then
 AddConversationOption(conversation, "[I need more experience to pursue Citizenship]","CloseItemConversation")
 elseif not HasQuest(Player,5722) and not HasCompletedQuest(Player,5722)then
AddConversationOption(conversation, "[write this in your quest journal]","StartQuest")
end
if HasQuest(Player,5722) or  HasCompletedQuest(Player,5722) then
AddConversationOption(conversation, "[continue]","StartQuest")
end
AddConversationOption(conversation, "[put the note away]","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Starcrest Commune residents must gather five tokens from the Down Below.")
end

function StartQuest(Item,Player)
if not HasQuest(Player,5722) and not HasCompletedQuest(Player,5722)then
   OfferQuest(nil,Player,5722)
end
conversation = CreateConversation()
AddConversationOption(conversation, "[put the note away]","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "After you complete your task, report to Marshal Glorfel using the citizenship sign.")
end
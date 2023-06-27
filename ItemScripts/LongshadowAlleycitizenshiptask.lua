--[[
    Script Name    : ItemScripts/LongshadowAlleycitizenshiptask.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.26 12:06:17
    Script Purpose : 
                   : 
--]]

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "[read more]","Dialog2")
StartDialogConversation(conversation, 2, Item, Player, "By order of the Overlord, all residents wishing to become citizens of the city must complete a trial to prove themselves.")

end


function Dialog2(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "[read about where tokens are found]","Dialog3")
StartDialogConversation(conversation, 2, Item, Player, "Tokens are scattered throughout the surrounding area. You must find five of these tokens to earn the right to speak to a city official.")
end


function Dialog3(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "[read more]","Dialog4")

StartDialogConversation(conversation, 2, Item, Player, "Each district has been assigned an area in which to hunt for their tokens. Only tokens from within that area will be accepted.")
end

function Dialog4(Item, Player)
conversation = CreateConversation()
if GetLevel(Player)<6 then
 AddConversationOption(conversation, "[I need more experience to pursue Citizenship]","CloseItemConversation")
elseif not HasQuest(Player,5868) and not HasCompletedQuest(Player,5868)then
AddConversationOption(conversation, "[write this in your quest journal]","StartQuest")
end
if HasQuest(Player,5868) or  HasCompletedQuest(Player,5868) then
AddConversationOption(conversation, "[continue]","StartQuest")
end
AddConversationOption(conversation, "[put the note away]","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Longshadow Alley residents must gather five tokens from the Ruins.")
end

function StartQuest(Item,Player)
conversation = CreateConversation()
if not HasQuest(Player,5868) and not HasCompletedQuest(Player,5868)then
   OfferQuest(nil,Player,5868)
end
AddConversationOption(conversation, "[put the note away]","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Use the citizenship sign to report to Abbetor T'avi once you complete your task.")
end

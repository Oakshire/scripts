--[[
    Script Name    : ItemScripts/agoblinsnotebookTheHideout.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.16 03:07:28
    Script Purpose : 
                   : 
--]]

local GobblerocksHideout = 5322

function examined(Item, Player)
if not HasQuest(Player, GobblerocksHideout) and not HasCompletedQuest(Player, GobblerocksHideout) then
OfferQuest(nil, Player, GobblerocksHideout)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry One.", "EntryOne")
AddConversationOption(conversation, "Put book away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "We Gobblerock have found secret place. We steal from Militia, hide in here. Tell in book, good for remember.")
end
end

function EntryOne(Item, Player)
conversation = CreateConversation()
if QuestStepIsComplete(Player, GobblerocksHideout, 3) then
AddConversationOption(conversation, "Entry Two", "EntryTwo")
end
AddConversationOption(conversation, "Put book away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Watch the front... the Grunt, Swindler and Shaman do. Weak they, but watch good. Gobblerock like let weak die first.")    
end

function EntryTwo(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player, GobblerocksHideout) == 4 then
SetStepComplete(Player, GobblerocksHideout, 4)
end
if QuestStepIsComplete(Player, GobblerocksHideout, 7) then
AddConversationOption(conversation, "Entry Three", "EntryThree")
end
AddConversationOption(conversation, "Put book away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Train the slug, they good pet. We stole many things from Militia today, hide them here. The butchers fight with tricksters who better, but we know haruspex is best. They get ready for raid now.")    
end

function EntryThree(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player, GobblerocksHideout) == 8 then
SetStepComplete(Player, GobblerocksHideout, 8)
end
if QuestStepIsComplete(Player, GobblerocksHideout, 11) then
AddConversationOption(conversation, "Entry Four.", "EntryFour")
end
AddConversationOption(conversation, "Put book away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "We train hard, brutes getting stronger and prophets getting smarter. Raid, Raid, raid... that what we do. The hooligans are playing card, me play too now.")    
end

function EntryFour(Item, Player)
if GetQuestStep(Player, GobblerocksHideout) == 12 then
SetStepComplete(Player, GobblerocksHideout, 12)
end
   end





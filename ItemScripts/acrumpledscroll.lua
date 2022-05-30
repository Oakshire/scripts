--[[
    Script Name    : ItemScripts/acrumpledscroll.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.28 04:10:25
    Script Purpose : 
                   : 
 --]]

local ACrumpledNoteMages = 5374 -- A Crumpled Scroll mages version.
local ACrumpledNoteWarriors = 5375 -- A Crumpled Scroll warriors version.
local ACrumpledNotePriests = 5435 -- A Crumpled Scroll priest version.

function examined(Item, Player)
conversation = CreateConversation()
if not HasQuest(Player, ACrumpledNoteMages) and not HasCompletedQuest(Player, ACrumpledNoteMages) then
AddConversationOption(conversation, "The mages in the Concordium must see this.", "Mages")
end
if not HasQuest(Player, ACrumpledNoteWarriors) and not HasCompletedQuest(Player, ACrumpledNoteWarriors) then
AddConversationOption(conversation, "I will show this note to the Steel Warriors.", "Warriors")
end
if not HasQuest(Player, ACrumpledNotePriests) and not HasCompletedQuest(Player, ACrumpledNotePriests) then
AddConversationOption(conversation, "The Temple of Life priests might know what to do.", "Priests")
end
AddConversationOption(conversation, "I don't need to do anything with this.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The tattered and dirty scroll almost comes apart as you flatten it to get a better look.  Only fragments are legible, but you begin to read, \"... plan ... comple... Soon it will be time for... don't suspect ... will liv ... once mor...\"")
end


function Mages(Item, Player)
CloseItemConversation(Item,Player)
OfferQuest(nil, Player, ACrumpledNoteMages)
end

function Warriors(Item, Player)
CloseItemConversation(Item,Player)
OfferQuest(nil, Player, ACrumpledNoteWarriors)
end

function Priests(Item, Player)
CloseItemConversation(Item,Player)
OfferQuest(nil, Player, ACrumpledNotePriests)
end
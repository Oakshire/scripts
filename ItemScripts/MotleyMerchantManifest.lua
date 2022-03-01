--[[
    Script Name    : ItemScripts/MotleyMerchantManifest.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.04 06:10:28
    Script Purpose : 
                   : 
--]]

local TheMotleyMerchantManifest = 5368 -- The Motley Merchant Manifest quest

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Open the book", "page1")
AddConversationOption(conversation, "Put away the book.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "On the cover of the book is a symbol of an eye within a circle formed of open palmed hands. The book is written in an odd language, one you can't read, but that you have seen carved into tavern tables.")
end

function page1(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next page", "page2")
AddConversationOption(conversation, "Close the book", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "There is the symbol of a quill overlapping an ink jar, with various indiscernible letters, perhaps in different languages.  A line is next to it where someone could provide a signature. Next to the signature line are the initials G.P.")
end

function page2(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next page", "page3")
AddConversationOption(conversation, "Previous page", "page1")
AddConversationOption(conversation, "Close the book", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "There is the symbol of a trinket being passed from one hand to another.  A line is next to it where someone could provide a signature. Next to the signature line are the initials P.B.")
end

function page3(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next page", "page4")
AddConversationOption(conversation, "Previous page", "page2")
AddConversationOption(conversation, "Close the book", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "There is the symbol of a fish swimming out of a mug of ale.  A line is next to it where someone could provide a signature. Next to the signature line are the initials K.I.")
end

function page4(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next page", "page5")
AddConversationOption(conversation, "Previous page", "page3")
AddConversationOption(conversation, "Close the book", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "There is the symbol of a mermaid holding a stein.  A line is next to it where someone could provide a signature. Next to the signature line are the initials B.M.")
end


function page5(Item, Player)
if HasQuest(Player, TheMotleyMerchantManifest) and not QuestStepIsComplete(Player, TheMotleyMerchantManifest, 2) then
SetStepComplete(Player, TheMotleyMerchantManifest, 2)
end
conversation = CreateConversation()
AddConversationOption(conversation, "Previous page", "page4")
AddConversationOption(conversation, "Close the book", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "There is the symbol of dwarven warhammer inside a compass pointing eastward. A line is next to it where someone could provide a signature. Next to the signature line are the initials P.I.")
end



--[[
    Script Name    : ItemScripts/VisionsofColdwindPoint.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.04 09:08:27
    Script Purpose : 
                   : 
--]]

local VisionsOfColdwindPoint = 5332 -- Visions of Coldwind Point quest

function examined(Item, Player)
conversation = CreateConversation()
if not HasQuest(Player, VisionsOfColdwindPoint) then
OfferQuest(nil, Player, VisionsOfColdwindPoint)
end
AddConversationOption(conversation, "Open the book", "page1")
AddConversationOption(conversation, "Close the book", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"Visions of Coldwind Point,\" by Quallium. I dedicate this collection of poems to my many fans around the globe.")
end

function page1(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next poem", "page2")
AddConversationOption(conversation, "Close the book", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Peeking Tree - The tree peeked over the hill to see what it could see. A great big ocean is all that it be. An ocean of cold wind dancing upon the waves. An ocean of deep blue beauty and deep blue danger and mariner graves. The tree stood and smiled all by its lonesome on its hill in the bright day. It was on the land and safe from deep blue death and harms way.")
end

function page2(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next poem", "page3")
AddConversationOption(conversation, "Previous poem", "page1")
AddConversationOption(conversation, "Close the book", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Sword Like No Other - There it rose out of the fields of mist. A great blade of stone a blade from the past. It rises to the gods and declares its existence. It shouts at evil and all that offend. It is a sword like no other, the defender of the great. It is the Qeynos Claymore and it prepares to meet fate.")
end

function page3(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next poem", "page4")
AddConversationOption(conversation, "Previous poem", "page2")
AddConversationOption(conversation, "Close the book", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The King of the Thicket - The King of the Thicket rustles in the wind. It tangles with the others smaller, meeker than it. The branches of the lesser strike at it back and forth, but the King stands above them ruling the forest. No little stumps, no axes of steel, no force on Norrath will take it to the mill. In a thicket of oak this elder does stand. It is the King of the Thicket and it will always be grand.")
end

function page4(Item, Player)
conversation = CreateConversation()
if not QuestStepIsComplete(Player, VisionsOfColdwindPoint, 1) then
SetStepComplete(Player, VisionsOfColdwindPoint, 1)
end
AddConversationOption(conversation, "Previous poem", "page3")
AddConversationOption(conversation, "Close the book", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Vigilant Giant - Around and around the mighty cyclops goes. Searching and seeking perils from below. Monsters of stone and granite attack and they mock. They strike at the walls of the vessels that rock. But beware all ye behemoths from sand deep below. This cyclops is not evil it is righteous and you its foe.")
end


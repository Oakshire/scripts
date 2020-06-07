--[[
	Script Name		:	ItemScripts/ArchitectureOfTheVerminsSnye.lua
	Script Purpose	:	Offers Questline "Architecture of the Vermin's Snye", Book
	Script Author	:	premierio015
	Script Date		:	05.06.2020
	Script Notes	:	NOT DONE YET
--]]



function examined(Item, Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Continue Story", "ContinueStory")
    AddConversationOption(conversation, "Close", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "Many of us travel through our lives without knowing anything more about our city than the name of the street on which we live.  This volume explores the rich architectural history of the Qeynos Catacombs, in particular -- Vermin's Snye.")
end

function ContinueStory(Item, Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Drains", "Drains")
    AddConversationOption(conversation, "Arches", "Arches")
    AddConversationOption(conversation, "Ceilings", "Ceilings")
    AddConversationOption(conversation, "Close", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "Three different styles of architecture within the Vermin's Snye are explored and outlined in this tome.  Some of the pages are torn out -- perhaps its former owner went on a tour and took along only the pages necessary.  I'll have to find them in order to read the entire tome.")
end

function Drains(Item,Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Continue Story 1", "DrainsContinueStory1")
    AddConversationOption(conversation, "Close", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "Many will consider the catacombs merely drains, useful for channeling away overflowing rain or excrement.  And yet, these areas represent some of our richest heritage, in terms of age and of architecture.  For only those of high intelligence will understand the usefulness of draining a city the size of Qeynos.")
end

function DrainsContinueStory1(Item, Player)
if not HasQuest(Player, quest1) and not HasCompletedQuest(Player, quest1) then
OfferQuest(nil, Player, quest1)
end
conversation = CreateConversation()
AddConversationOption(conversation, "Close", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "As many of you know, while Qeynos appears to have existed from man's earliest Age, it is a relatively recent construction project. Its roots go much deeper, as the catacombs beneath Qeynos include ruined and rebuilt aqueduct systems.  What comes in must go out, therefore while the aqueducts brought water into the city, the drains enable it to leave, without making the city's streets impossible to navigate safely -- or cleanly.")
end

function Arches(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Continue Story 2", "ArchesContinueStory1")
AddConversationOption(conversation, "Close", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Arches are a very strong structural technique.  In this chapter, we explore the styles of arches found in the Vermin's Snye and attempt to date the structures based on known architects' styles.  They are strong, bearing many times their own weight, making them ideal for underground areas.")
end

function ArchesContinueStory1(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Continue Story 2", "ArchesContinueStory2")
AddConversationOption(conversation, "Close", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Arches are my weakness.  When I travel through Antonica, I will often stop to admire the remnants of the old aqueducts across the countryside.  There is no other form in architecture that is so versatile and strong.  There are some splendid examples of them in the Vermin's Snye.")
end

function ArchesContinueStory2(Item, Player)
if not HasQuest(Player, quest2 and not HasCompletedQuest(Player, quest2) then
OfferQuest(nil, Player, quest2)
end
conversation = CreateConversation()
AddConversationOption(conversation, "Close", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Within the Vermin's Snye, travel beyond the room of the drains and you will enter some of the oldest parts of the Qeynos catacomb system.  Look at the arches -- they are stockily formed and the ceilings not very high.  In some places, the arches seem to have been added as an after thought!  Indeed, sections of the catacombs previously used only for drainage were converted at various times to crypts.  You will therefore sometimes encounter restless spirits in the dark.")
end

function Ceilings(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Continue Story 3", "CeilingsContinueStory1")
AddConversationOption(conversation, "Close", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "If one carries a bright enough light source to the Vermin's Snye, the ceilings are visible through the darkness.  These magnificent elements do not deserve to languish in the complete and utter dark!  After reading this, you will consider ceilings more than just a roof over your head.")
end

function CeilingsContinueStory1(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Continue Story 3", "CeilingsContinueStory2")
AddConversationOption(conversation, "Close", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Too often as we go through our day, we spend our time looking at the ground -- will a root or loose stone trip me?  Will I find a lucky copper?  Is my bootlace really untied?  The information in this guide will give you good reason to look up for a change, as you travel the Vermin's Snye in Qeynos.")
end

function CeilingsContinueStory2(Item, Player)
if not HasQuest(Player, quest3) and not HasCompletedQuest(Player, quest3) then
OfferQuest(nil, Player, quest3) 
end
conversation = CreateConversation()
AddConversationOption(conversation, "Close", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "I will admit, that there are few ceilings of note in Vermin's Snye.  However, once one knows what to look for, architecturally speaking, one will be able to recognize and identify elements of style in other similar catacombs.  Much of the Vermin's Snye area is in the Randalphesque style, with generally plain columns supporting plaster and lathe ceilings.  This early architecture was a "back-to-our-roots" reaction to the cataclysms reshaping the world, when people wanted simple yet homey structures.")
end




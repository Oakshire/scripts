--[[
    Script Name    : ItemScripts/TheJournaloftheSunWolf.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.24 01:05:51
    Script Purpose : 
                   : 
--]]

local SunWolf = 5559

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Open the journal.","Page1")
AddConversationOption(conversation, "Put the journal away.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The journal is damp and weather worn. The title and author's name have been blurred beyond recognition. A lock that once bound it shut has rusted and corroded now allowing entry into the secrets within.")
end

function Page1(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Turn to the next entry.","Page2")
AddConversationOption(conversation, "Put the journal away.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "...many tales of this mythical creature. It has been sighted since the Age of Turm…the southern border of the great Jaggedpine Forest...many sought the magical properties bound to the majestic coat of the Sun... slain him while he sit and sip from a spiraling brook, something he could only do in corporeal form. It was at…was taken to the city...where it was sold to a family of aristocrats...")
end

function Page2(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Turn to the next entry.","Page3")
AddConversationOption(conversation, "Turn back to previous entry.","Page1")
AddConversationOption(conversation, "Put the journal away.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "...has been a personal quest to discover the truth...Sun Wolf as most woodsman of old have called it. Tales now place this beast...is difficult to believe such a beast stalks so closely to the hold of valor, but... Will now visit the places within the Peat Bog rumored to be frequented be ...although he may have lost his ... he is bound to the city now …")
end

function Page3(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Turn to the next entry.","Page4")
AddConversationOption(conversation, "Turn back to previous entry.","Page2")
AddConversationOption(conversation, "Put the journal away.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "...has been sighted by the great outlet leading from the city. This drainage point is what keeps this place in its boggy state. Why the Sun Wolf has been seen howling at these bars is a mystery bound to the citizens of Qeynos. Perhaps it is within the walls of the city that a piece of this creature still calls to him. Perhaps the tales of... a golden fur cape... such an item would be quite rare and quite...")
end

function Page4(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Turn to the next entry.","Page5")
AddConversationOption(conversation, "Turn back to previous entry.","Page3")
AddConversationOption(conversation, "Put the journal away.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "...recalling what it means to thirst the Sun Wolf...the pond within the center of the bog offers little along the lines of purified water, but to a creature that truly neither breathes nor thirsts...lurking within the safety of the hollowed ... materializing into a much more whole form to arch forward and sip from…here he was in front of me not more than…from the darkness he tared with piercing eyes...")
end

function Page5(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Turn to the next entry.","Page6")
AddConversationOption(conversation, "Turn back to previous entry.","Page4")
AddConversationOption(conversation, "Put the journal away.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "I followed...the rain pelted the already soaked land with great ferocity…there by the trees they call the firing squad… was sniffing about the hollowed...it was husk on the end that offered the Sun Wolf...would a mythical beast need shelter for?...")
end

function Page6(Item, Player)
conversation = CreateConversation()
if not HasQuest(Spawn,SunWolf) and not HasCompletedQuest(Spawn,Sunwolf)then
AddConversationOption(conversation, "Attempt to determine the path of the Sun Wolf.","QuestStart")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page5")
AddConversationOption(conversation, "Put the journal away.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "...the final encounter... I tracked the wolf to the lone stump ring. He exited, lurking out of the ring and into a niche between the ancient bark and stone. I followed the ... Finally we met face to face! The great wolf displayed his deadly fangs...I ran...amazingly I escaped, or did the Sun Wolf let me go?...")
end

function QuestStart(Item,Player)
	    CloseItemConversation(Item,Player)
		OfferQuest(nil, Player, SunWolf)
end

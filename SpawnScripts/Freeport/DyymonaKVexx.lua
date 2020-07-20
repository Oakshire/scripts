--[[
    Script Name    : SpawnScripts/Freeport/DyymonaKVexx.lua
    Script Author  : premierio015
    Script Date    : 2020.06.07 01:06:08
    Script Purpose : Offer Dark Elf Racial Questlines
                   : 
--]]

function spawn(NPC)

end

function respawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Are those the only choices?", "Option1")
	AddConversationOption(conversation, "The Overlord.", "Option2")
	AddConversationOption(conversation, "Queen Cristanos.", "Option2")
	AddConversationOption(conversation, "Talvus Thex.", "Talvus")
	StartConversation(conversation, NPC, Spawn, "I greet you, fellow child of Hate.  But this is where our conversation must end, without knowledge of your allegiance.  Do you bend your knee to Queen Cristanos, The Overlord, or Talvus Thex?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
             AddConversationOption(conversation, "Queen Cristanos.", "Option2")
              AddConversationOption(conversation, "The Overlord.", "Option2")
               AddConversationOption(conversation, "Talvus Thex." "Talvus")
	AddConversationOption(conversation, "None of your concern.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "The only ones that influence this conversation, yes.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, actually, I am.", "Option3")
                AddConversationOption(conversation, "No, I am not.")
	StartConversation(conversation, NPC, Spawn, "Delicious.  Let us continue then.  Are you aware of the situation in Longshadow Alley?")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I am a true Teir'Dal and superior child of Hate!", "Option4")
                AddConversationOption(conversation, "Flattery will get you nowhere.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "Then we may cut to the meat of this inquiry.  The Thexian disease must be removed from within Longshadow Alley.  I believe that you are the perfect Teir'Dal for this job, or are you not the superior child of Hate that you appear to be?")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Arasai and Thexians?  This should be interesting.", "offer")
                AddConversationOption(conversation, "Arasai and Thexians?  No way!")
	StartConversation(conversation, NPC, Spawn, "Delicious.  Enter Longshadow Alley and kill as many Thexians as you find.  And while you are there, bring me back whatever torture instruments the Arasai zealots are using in their Thexian inquiries.  Their use will become clear, later.")
end


function Talvus(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "", "Turn around and put heel to pavestones, immediately!", "", 1689589577, 4560189, Spawn)
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, 566)
end

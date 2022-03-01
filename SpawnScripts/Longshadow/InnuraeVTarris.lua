--[[
	Script Name	: SpawnScripts/Longshadow/InnuraeVTarris.lua
	Script Purpose	: Innurae V`Tarris 
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/innurae_v_tarris/fprt_hood05/quests/innuraevtarris/lore_innurae.mp3", "", "", 505131296, 528063113, Spawn)
	AddConversationOption(conversation, "And where, pray tell, shall you be moving on to?", "dlg_12_1")
	AddConversationOption(conversation, "Then move on, hag, and leave the space for those who can provide some use!")
	StartConversation(conversation, NPC, Spawn, "Don't expect anything from me, young one.  This place is but a mere rest stop before I move on.")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/innurae_v_tarris/fprt_hood05/quests/innuraevtarris/lore_innurae000.mp3", "", "", 3567010242, 2488453546, Spawn)
	AddConversationOption(conversation, "Home, what home, you foolish old woman?! Neriak was destroyed centuries ago!", "dlg_12_2")
	AddConversationOption(conversation, "Ha!  While you die searching for your lost Neriak, I will be prospering and gaining power!")
	StartConversation(conversation, NPC, Spawn, "Neriak is the place of my birth, and it shall be the place of my death.  While you remain here in the care of the humans, I will be home. ")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/innurae_v_tarris/fprt_hood05/quests/innuraevtarris/lore_innurae001.mp3", "", "", 4044045516, 2985844795, Spawn)
	AddConversationOption(conversation, "Neriak has been found?!", "dlg_12_3")
	AddConversationOption(conversation, "Wake up and accept reality!  Neriak is gone!")
	StartConversation(conversation, NPC, Spawn, "Yes, Neriak was once lost to us, but not all of us chose to debase ourselves in a contemptible union with the humans.  Those of us who care about our heritage, those of us who are truly TeirDal, are searching for a way to return to the grace and legacy of our people.  It would seem that such a way has already been found...")
end

function dlg_12_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/innurae_v_tarris/fprt_hood05/quests/innuraevtarris/lore_innurae002.mp3", "", "", 3686330680, 1121720833, Spawn)
	AddConversationOption(conversation, "What siege?", "dlg_12_4")
	AddConversationOption(conversation, "Who are the loyalists?", "dlg_12_9")
	AddConversationOption(conversation, "How was the foreign quarter destroyed?", "dlg_12_11")
	AddConversationOption(conversation, "So you found some ruins, eh?  Yeah, good luck with that.")
	StartConversation(conversation, NPC, Spawn, "Not entirely. The loyalists to the cause believe that they have uncovered what was once an entrance to the Foreign Quarter.  However, as that portion of the city was destroyed in the siege, we may have some time left before we can find our home.")
end

function dlg_12_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/innurae_v_tarris/fprt_hood05/quests/innuraevtarris/lore_innurae003.mp3", "", "", 4154815778, 4054614513, Spawn)
	AddConversationOption(conversation, "So, Neriak fell to a group of halflings?", "dlg_12_5")
	AddConversationOption(conversation, "What happened in Faydwer?")
	AddConversationOption(conversation, "I have no time to listen to this now.")
	StartConversation(conversation, NPC, Spawn, "During the age of Turmoil, Neriak was besieged by Leatherfoot Raiders. The forces of Neriak were thin, as Faydwer had deployed most of the Indigo Brotherhood. So we were unsuspecting and unprepared for such an attack. ")
end

function dlg_12_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/innurae_v_tarris/fprt_hood05/quests/innuraevtarris/lore_innurae004.mp3", "", "", 2883566286, 1697596405, Spawn)
	AddConversationOption(conversation, "You obviously have no love for your ruler; why return to Neriak then?", "dlg_12_6")
	AddConversationOption(conversation, "I have no time to listen to this now.")
	StartConversation(conversation, NPC, Spawn, "In a way, yes, but the city also fell to the greedy ambitions of a warlord king who neglected the needs of his people and soiled the legacy of his great heritage in pursuit of conquest over the refuse and swine that slithers upon the surface of this world.")
end

function dlg_12_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/innurae_v_tarris/fprt_hood05/quests/innuraevtarris/lore_innurae005.mp3", "", "", 895354264, 3005681462, Spawn)
	AddConversationOption(conversation, "Why are you so against conquering the surface world?", "dlg_12_7")
	AddConversationOption(conversation, "I have no time to listen to this now.")
	StartConversation(conversation, NPC, Spawn, "If the city has been shut out from the rest of the world and returned to its proper place of dominion in the Underfoot, then there are no longer any wasteful attempts at conquering this abominable haven of refuse, now are there?")
end

function dlg_12_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/innurae_v_tarris/fprt_hood05/quests/innuraevtarris/lore_innurae006.mp3", "", "", 1523175183, 964525033, Spawn)
	AddConversationOption(conversation, "So, now that Neriak is found, you will return home?", "dlg_12_8")
	AddConversationOption(conversation, "I have no time to listen to this now.")
	StartConversation(conversation, NPC, Spawn, "No surface campaign has proved fruitful.  The TeirDal are the ruling force in the Underfoot.  No subterranean race rivals our power and none can withstand our dominion.  Besides, ownership of the surface world would be tantamount to owning a dung hill festering with maggots and flies.")
end

function dlg_12_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/innurae_v_tarris/fprt_hood05/quests/innuraevtarris/lore_innurae010.mp3", "", "", 852727047, 1895315430, Spawn)
	AddConversationOption(conversation, "What about the siege?", "dlg_12_9")
	AddConversationOption(conversation, "Who are the loyalists?")
	AddConversationOption(conversation, "How was the foreign quarter destroyed?")
	AddConversationOption(conversation, "Not at the moment.  If I need any more information, I'll be back.")
	StartConversation(conversation, NPC, Spawn, "I long for the day when I return home.  While I am still here, though, I choose to educate curiosity-seekers.  Would you like to know anything else?")
end

function dlg_12_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/innurae_v_tarris/fprt_hood05/quests/innuraevtarris/lore_innurae008.mp3", "", "", 787145551, 4172782462, Spawn)
	AddConversationOption(conversation, "So the loyalists have been successful?  Why are you still here then, woman?!")
	StartConversation(conversation, NPC, Spawn, "The loyalists are all that is left of the TeirDal; all the others are traitorous whelps who only wear our dark skin and fair hair.  The loyalists are dedicated to the cause of being restored to our nation.")
end

function dlg_12_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/innurae_v_tarris/fprt_hood05/quests/innuraevtarris/lore_innurae010.mp3", "", "", 852727047, 1895315430, Spawn)
	AddConversationOption(conversation, "What about the siege?", "dlg_12_11")
	AddConversationOption(conversation, "Who are the loyalists?")
	AddConversationOption(conversation, "How was the foreign quarter destroyed?", "dlg_12_11")
	AddConversationOption(conversation, "Not at the moment.  If I need any more information, I'll be back.")
	StartConversation(conversation, NPC, Spawn, "I long for the day when I return home.  While I am still here, though, I choose to educate curiosity-seekers.  Would you like to know anything else?")
end

function dlg_12_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/innurae_v_tarris/fprt_hood05/quests/innuraevtarris/lore_innurae007.mp3", "", "", 1084233029, 4258746911, Spawn)
	AddConversationOption(conversation, "If Neriak has been found, will you return to it?")
	AddConversationOption(conversation, "I have no time to listen to this now.")
	StartConversation(conversation, NPC, Spawn, "I was very young when the siege began, but I saw the entrance collapsing as I fought in the forest with the other dragoons.  It became silent as the rumbling destruction came to pass.  All fighting ceased; everyone was in awe of the unexpected event.  I can't be certain of what happened, exactly.  All that I know is that a great force collapsed the cavern.")
end

function dlg_12_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/innurae_v_tarris/fprt_hood05/quests/innuraevtarris/lore_innurae010.mp3", "", "", 852727047, 1895315430, Spawn)
	AddConversationOption(conversation, "What about the siege?", "dlg_12_13")
	AddConversationOption(conversation, "Who are the loyalists?")
	AddConversationOption(conversation, "How was the foreign quarter destroyed?")
	AddConversationOption(conversation, "Not at the moment.  If I need any more information, I'll be back.")
	StartConversation(conversation, NPC, Spawn, "I long for the day when I return home.  While I am still here, though, I choose to educate curiosity-seekers.  Would you like to know anything else?")
end
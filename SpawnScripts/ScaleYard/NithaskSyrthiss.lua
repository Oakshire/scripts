--[[
	Script Name	: SpawnScripts/ScaleYard/NithaskSyrthiss.lua
	Script Purpose	: Nithask Syrthiss 
	Script Author	: John Adams
	Script Date	: 2008.10.01
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

	PlayFlavor(NPC, "voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_000.mp3", "", "", 2035652250, 4149115810, Spawn)
	AddConversationOption(conversation, "What are you talking about?", "dlg_0_1")
	AddConversationOption(conversation, "I'm not interested in your rhetoric!")
	StartConversation(conversation, NPC, Spawn, "We will not fall victim to imprisonment again! History, as it has shown, will not allow our fate to be sealed in mediocrity.")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_001.mp3", "", "", 1663681837, 1174355350, Spawn)
	AddConversationOption(conversation, "What do you know that I don't?", "dlg_0_2")
	AddConversationOption(conversation, "They will, but that force will not be yours, fool!")
	StartConversation(conversation, NPC, Spawn, "I speak of inevitable vengeance and the rise of a new empire.  The Shattered lands will one day be ruled by a formidable and apt force.  It is our destiny.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_002.mp3", "", "", 3033639880, 3068296967, Spawn)
	AddConversationOption(conversation, "What's the Green Mist?", "dlg_0_3")
	AddConversationOption(conversation, "Oh great, another doom-sayer.  I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "I know the history of this world and the forces responsible for the freedom of our race in many centuries past are still with us, ever watching, ever waiting for our time to rise.  The Green Mist will descend again!")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_003.mp3", "", "", 1583372838, 1119979594, Spawn)
	AddConversationOption(conversation, "What did the Green Mist do for you, exactly?", "dlg_0_4")
	AddConversationOption(conversation, "What recent occurrences?", "dlg_0_5")
	AddConversationOption(conversation, "Bed-time stories don't interest me.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "The iksar were once a race enslaved by the terrible and immensely powerful Shissar Empire. After a millennium of enslavement, we were suddenly blessed by the descent of the Green Mist. We thought the Green Mist was a blessing from the patron Thule, but recent occurrences have proved this great blessing has not been entirely extinguished.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_004.mp3", "", "", 1279006869, 1520135252, Spawn)
	AddConversationOption(conversation, "That was thousands of years ago!  Why do you think the mist has suddenly returned?", "dlg_0_5")
	AddConversationOption(conversation, "I have to go.")
	StartConversation(conversation, NPC, Spawn, "It freed us from our captors!  The most powerful mortal race to ever exist upon the face of this world was eradicated in mere hours.  We left their blistered bodies to rot in the jungles while we rose to become the most powerful empire in Kunark's history.")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_005.mp3", "", "", 2951522699, 75020216, Spawn)
	AddConversationOption(conversation, "What?!  The Green Mist came back?!", "dlg_0_6")
	AddConversationOption(conversation, "Why do you think the mists would help you?", "dlg_0_4")
	AddConversationOption(conversation, "Why would the mists come back to save Qeynos?", "dlg_0_11")
	AddConversationOption(conversation, "I have to go.")
	StartConversation(conversation, NPC, Spawn, "During the Age of War, the Rallosian Empire had a second coming and threatened to cover the whole of the world in destruction and death, which they were very successful at. It wasn't until the fronts had reached the gates of Qeynos that the tides were turned with the return of the mists.")
end

function dlg_0_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_006.mp3", "", "", 3654295321, 3073054012, Spawn)
	AddConversationOption(conversation, "Wait, how do you know the mists did this?", "dlg_0_7")
	AddConversationOption(conversation, "I have to go.")
	StartConversation(conversation, NPC, Spawn, "Indeed, they did.  They descended upon the Rallosian Armies when it seemed that their victory was inevitable.  Upon the dawn of battle, the Qeynosian armies were not met with the hordes of ogres, orcs and goblinoids that had ravaged their territories.  Instead, they were met with a field of blistered corpses.  ")
end

function dlg_0_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_007.mp3", "", "", 2705603054, 3817678111, Spawn)
	AddConversationOption(conversation, "But the gods are dead.  How could the mists return?", "dlg_0_8")
	AddConversationOption(conversation, "I have to go.")
	StartConversation(conversation, NPC, Spawn, "One of the greatest armies this world has ever seen suddenly fell dead upon the eve of their victory.  Their bodies were covered in the festering sores and blisters consistent with the affliction of the mist.  There is no other logical explanation.  The power of the mist is still with us, and it will be our key to ascension!")
end

function dlg_0_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_008.mp3", "", "", 3299299562, 2342822075, Spawn)
	AddConversationOption(conversation, "So you think that this mist creature is on your side?", "dlg_0_9")
	AddConversationOption(conversation, "I have to go.")
	StartConversation(conversation, NPC, Spawn, "You raise a good point, but one that I refuted in my telling of this history. The mist is obviously not a force conjured by the gods, but it is something more mysterious; perhaps it is a sentient being beyond the realms of the mortal and divine, or perhaps it is beyond such designations.")
end

function dlg_0_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_009.mp3", "", "", 2371406226, 2886166849, Spawn)
	AddConversationOption(conversation, "And you're so certain that the mists won't destroy your empire?", "dlg_0_10")
	AddConversationOption(conversation, "I have to go.")
	StartConversation(conversation, NPC, Spawn, "Hisssss!  Do not speak such disrespect!  The mist cannot be willed and is not so petty in the choosing of sides.  It is the executor of justice and a servant of fate!  This mist will come again and justice will be delivered once more.  There is no escape from it!  Embrace the inevitability of our rise!")
end

function dlg_0_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_010.mp3", "", "", 475060493, 1057785504, Spawn)
	AddConversationOption(conversation, "You're a bit hopeful, I think, but your story was informative nonetheless.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "I am only certain of our fate and what history has shown.  The mists are favorable to us; why, I do not know.  Unlike the empires past, the second rising of our imperial reign will not be weak or foolishly arrogant!  It will serve in respect to the greater powers of this existence that can be neither fathomed nor controlled!")
end

function dlg_0_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/nithask_syrthiss/fprt_hood06/quests/nithasksyrthiss/lore_nithask_011.mp3", "", "", 3038238130, 30476934, Spawn)
	-- even in Live, this conversation option does not continue.
	AddConversationOption(conversation, "You're so sure that the mists returned?")
	AddConversationOption(conversation, "I have to go.")
	StartConversation(conversation, NPC, Spawn, "The Green Mist is not something fully understood by mortal minds.  Its motives and its purpose are beyond our comprehension.  I believe that the mists were used to destroy a war machine that had overstepped its boundaries of arrogance with senseless destruction.  The Rallosian Army earned their fate.")
end

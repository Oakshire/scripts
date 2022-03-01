--[[
	Script Name	: SpawnScripts/GreaterFaydark/LadyKatriEloranta.lua
	Script Purpose	: Lady Katri Eloranta <Fae Rite of Passage Advisor>
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri043.mp3", "", "", 1735617296, 447259139, Spawn)
	AddConversationOption(conversation, "Apparently, it really does exist -- and it's using one of Kelethin's tree stumps as its lair!", "dlg_1_1")
	AddConversationOption(conversation, "I'm still learning.")
	StartConversation(conversation, NPC, Spawn, "Have you learned more about the Grender?")
	if convo==18 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri_both001.mp3", "", "", 3983154354, 2409150172, Spawn)
		AddConversationOption(conversation, "I am seeking adventure.", "dlg_18_1")
		AddConversationOption(conversation, "I'll be on my way now.")
		StartConversation(conversation, NPC, Spawn, "Hello, I am Lady Katri Eloranta, advisor.  How may I help you?")
	end

	if convo==36 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri009.mp3", "", "", 4145784618, 3223534278, Spawn)
		AddConversationOption(conversation, "I completed the training, my lady.", "dlg_36_1")
		AddConversationOption(conversation, "I am still working on it.")
		StartConversation(conversation, NPC, Spawn, "How goes your self-defense training?")
	end

	if convo==37 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri009.mp3", "", "", 4145784618, 3223534278, Spawn)
		AddConversationOption(conversation, "I completed the training, my lady.", "dlg_37_1")
		AddConversationOption(conversation, "I am still working on it.")
		StartConversation(conversation, NPC, Spawn, "How goes your self-defense training?")
	end

	if convo==89 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri015.mp3", "", "", 3835887931, 684375070, Spawn)
		AddConversationOption(conversation, "Not yet, but I have some questions.", "dlg_89_1")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "You've finished your Fae history studies so soon?")
	end

	if convo==90 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri015.mp3", "", "", 3835887931, 684375070, Spawn)
		AddConversationOption(conversation, "Not yet, but I have some questions.", "dlg_90_1")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "You've finished your Fae history studies so soon?")
	end

	if convo==91 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri015.mp3", "", "", 3835887931, 684375070, Spawn)
		AddConversationOption(conversation, "Not yet, but I have some questions.", "dlg_91_1")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "You've finished your Fae history studies so soon?")
	end

	if convo==92 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri020.mp3", "", "", 1734937732, 3669646106, Spawn)
		AddConversationOption(conversation, "We must cull those that are diseased.", "dlg_92_1")
		AddConversationOption(conversation, "I cannot decide.")
		StartConversation(conversation, NPC, Spawn, "You stand at the cusp of your adulthood.  What do you recommend that we do with these creatures, .. GetName(Spawn) .. . What does your spirit tell you?")
	end

	if convo==93 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri020.mp3", "", "", 1734937732, 3669646106, Spawn)
		AddConversationOption(conversation, "We must cull those that are diseased.", "dlg_93_1")
		AddConversationOption(conversation, "I cannot decide.")
		StartConversation(conversation, NPC, Spawn, "You stand at the cusp of your adulthood.  What do you recommend that we do with these creatures, .. GetName(Spawn) .. . What does your spirit tell you?")
	end

	if convo==97 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri030.mp3", "", "", 601485501, 2301313071, Spawn)
		AddConversationOption(conversation, "I wish we could have healed those creatures.", "dlg_97_1")
		AddConversationOption(conversation, "I'd rather not speak about it now.")
		StartConversation(conversation, NPC, Spawn, "You seem troubled, .. GetName(Spawn) .. .  What is it?")
	end

end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri044.mp3", "", "", 1161697637, 3743302883, Spawn)
	AddConversationOption(conversation, "I want to help!", "dlg_1_2")
	AddConversationOption(conversation, "I must take care of some personal business first.")
	StartConversation(conversation, NPC, Spawn, "The Grender using one of our own trees as its lair is very bad news.  When something is close to you, you tend to overlook it.  This creature must be dealt with, and swiftly!")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri045.mp3", "", "", 3409419602, 4220390351, Spawn)
	AddConversationOption(conversation, "Kelethin must be saved at all costs.", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "No, .. GetName(Spawn) .. .  You are in the midst of your Rite of Passage.  If you leave now before it is complete, you may never be able to finish.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri046.mp3", "", "", 3666385411, 3496691954, Spawn)
	AddConversationOption(conversation, "Yes.  My spirit will renew someday, whether in me or in someone else.", "dlg_1_4")
	AddConversationOption(conversation, "I need more time to consider this.")
	StartConversation(conversation, NPC, Spawn, "You're willing to sacrifice your own future to save Kelethin?")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri047.mp3", "", "", 455754558, 1919269008, Spawn)
	AddConversationOption(conversation, "You did?", "dlg_1_5")
	StartConversation(conversation, NPC, Spawn, "Well done, .. GetName(Spawn) .. .  I knew I sensed greatness in you.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri050.mp3", "", "", 3603309443, 2534399133, Spawn)
	AddConversationOption(conversation, "I'll speak with her now.", "dlg_1_6")
	StartConversation(conversation, NPC, Spawn, "Of course! I venture to say that you will want to discuss strategies concerning the Grender with someone.  It won't do to just rush blindly in for the attack.  Speak with Jalmari Keletana, near the Old Kelethin Acorn Lift.  She belongs to our self-defense counsel and will assist you.")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri001.mp3", "", "", 1049447300, 1949649811, Spawn)
	AddConversationOption(conversation, "Yes! I can't wait!", "dlg_18_2")
	AddConversationOption(conversation, "The Rite of Passage?")
	AddConversationOption(conversation, "I'm not quite ready for that.")
	StartConversation(conversation, NPC, Spawn, "Are you ready to begin your studies for the Rite of Passage?")
end

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri002.mp3", "", "", 3689194229, 1343885891, Spawn)
	AddConversationOption(conversation, "My spirit remembers quite a lot, but it forgot about the Rite of Passage.")
	StartConversation(conversation, NPC, Spawn, "Once you complete the Rite of Passage, you are granted full access to the city of Kelethin.  The Rite tests your knowledge, capability and competence and allows us to see what your spirit remembers.")
end

function dlg_18_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri003.mp3", "", "", 4152347739, 1411384376, Spawn)
	AddConversationOption(conversation, "I am ready.", "dlg_18_4")
	AddConversationOption(conversation, "I'm not quite ready yet.")
	StartConversation(conversation, NPC, Spawn, "That's natural.  As time flows past us, our spirit buds save only what is absolutely necessary for our survival.  The Rite of Passage has changed over time as we have changed ourselves.  Are you ready to begin?")
end

function dlg_18_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri004.mp3", "", "", 861135728, 126889941, Spawn)
	AddConversationOption(conversation, "There are several tests, aren't there?", "dlg_18_5")
	StartConversation(conversation, NPC, Spawn, "The Rite of Passage is a test of your maturity.  While our spirits retain the essentials stored by our ancestors, we are only able to pass the Rite of Passage at the right time of our growth.")
end

function dlg_18_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri005.mp3", "", "", 1325478030, 3761794570, Spawn)
	AddConversationOption(conversation, "I understand.", "dlg_18_6")
	StartConversation(conversation, NPC, Spawn, "Correct.  And you must pass each test, though you can certainly take as much time as you need.  This isn't a test of speed, but of spirit.")
end

function dlg_18_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri006.mp3", "", "", 3359362369, 2718053972, Spawn)
	AddConversationOption(conversation, "What should I study first?", "dlg_18_7")
	AddConversationOption(conversation, "I need to begin this another time.")
	StartConversation(conversation, NPC, Spawn, "You will learn everything you need to know from the instructors, but which elements will be in your individual Rite of Passage will only be revealed in the final test.")
end

function dlg_18_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri007.mp3", "", "", 2759194756, 1812971858, Spawn)
	AddConversationOption(conversation, "I know!", "dlg_18_8")
	StartConversation(conversation, NPC, Spawn, "Although we are peaceful, we all learn the art of self-defense.  Go to the library, just one platform over, where you will learn about our self-defense postures.  And be careful crossing the platforms, XXXXXXXX.")
end

function dlg_18_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri008.mp3", "", "", 1488353085, 2480151876, Spawn)
	AddConversationOption(conversation, "I will come back when I've completed this task.", "dlg_18_9")
	StartConversation(conversation, NPC, Spawn, "I realize you've heard that all your life, but it would certainly be a shame to lose such a promising spirit at this point, wouldn't it?")
end

function dlg_36_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri010.mp3", "", "", 2141344293, 2858138315, Spawn)
	AddConversationOption(conversation, "I guess I'm so excited about the Rite of Passage that I forgot.", "dlg_36_2")
	AddConversationOption(conversation, "I'm sorry, but I honestly don't remember.")
	StartConversation(conversation, NPC, Spawn, "Don't be so formal, .. GetName(Spawn) .. .  Please, call me 'Katri.'  The title of 'Lady' is merely the way that advisors such as myself are distinguished in Kelethin.  Or have you forgotten that?")
end

function dlg_36_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri011.mp3", "", "", 2174466602, 3932055913, Spawn)
	AddConversationOption(conversation, "Should I study more about history now?")
	AddConversationOption(conversation, "I will need to return later.", "dlg_36_3")
	StartConversation(conversation, NPC, Spawn, "Not to worry.  The Rite of Passage exists to teach you not only how to conduct yourself but also how to retain the memories of your spirit so that they may be passed down through the generations.")
end

function dlg_37_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri010.mp3", "", "", 2141344293, 2858138315, Spawn)
	AddConversationOption(conversation, "I guess I'm so excited about the Rite of Passage that I forgot.", "dlg_37_2")
	AddConversationOption(conversation, "I'm sorry, but I honestly don't remember.")
	StartConversation(conversation, NPC, Spawn, "Don't be so formal, .. GetName(Spawn) .. .  Please, call me 'Katri.'  The title of 'Lady' is merely the way that advisors such as myself are distinguished in Kelethin.  Or have you forgotten that?")
end

function dlg_37_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri011.mp3", "", "", 2174466602, 3932055913, Spawn)
	AddConversationOption(conversation, "Should I study more about history now?", "dlg_37_3")
	AddConversationOption(conversation, "I will need to return later.")
	StartConversation(conversation, NPC, Spawn, "Not to worry.  The Rite of Passage exists to teach you not only how to conduct yourself but also how to retain the memories of your spirit so that they may be passed down through the generations.")
end

function dlg_37_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri012.mp3", "", "", 1082992118, 2058500337, Spawn)
	AddConversationOption(conversation, "She is a history teacher?", "dlg_37_4")
	StartConversation(conversation, NPC, Spawn, "That's an excellent idea, .. GetName(Spawn) .. .  Much of our history is inherited through our spirit bud and yet, there are still gaps.  The collective memories of our community are what maintains our continuity.  Your first instructor is my sister, Lyyti Eloranta.")
end

function dlg_37_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri013.mp3", "", "", 1032451909, 2210988260, Spawn)
	AddConversationOption(conversation, "I'll get started on my history lessons.", "dlg_37_5")
	StartConversation(conversation, NPC, Spawn, "There are several, all in Kelethin.  My sister, Lyyti Eloranta, is an excellent teacher.")
end

function dlg_37_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri014.mp3", "", "", 895440625, 99177481, Spawn)
	AddConversationOption(conversation, "Thank you!", "dlg_37_6")
	StartConversation(conversation, NPC, Spawn, "Lyyti is minding her shop on the platform near the bank.  If you get lost, ask any of the guards to help you find her.")
end

function dlg_89_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri016.mp3", "", "", 3658860826, 2912932568, Spawn)
	AddConversationOption(conversation, "I spoke with Raimo...he blames Outsiders for bringing disease to the Faydarks.", "dlg_89_2")
	StartConversation(conversation, NPC, Spawn, "I'll do my best to answer.  What is it?")
end

function dlg_89_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri017.mp3", "", "", 4042847648, 718902311, Spawn)
	AddConversationOption(conversation, "There is something to what he said.  Look at those diseased treants so close to Kelethin.", "dlg_89_3")
	AddConversationOption(conversation, "I don't believe all Outsiders are to blame, though I am troubled by the diseased treants.")
	StartConversation(conversation, NPC, Spawn, "Dark events in Raimo's past lives continue to shadow his outlook to this day.  Not all Fae believe Outsiders are evil.")
end

function dlg_89_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri018.mp3", "", "", 3342872278, 3547383900, Spawn)
	AddConversationOption(conversation, "Are all the treants of the Faydark at risk?")
	AddConversationOption(conversation, "That's what we get for trusting Outsiders.", "dlg_89_4")
	StartConversation(conversation, NPC, Spawn, "Ah, the poor treants, rotting from the inside out.  We've tried to heal them, but by the time the disease is obvious, it's too late.  And I fear the disease is spreading.")
end

function dlg_90_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri016.mp3", "", "", 3658860826, 2912932568, Spawn)
	AddConversationOption(conversation, "I spoke with Raimo...he blames Outsiders for bringing disease to the Faydarks.", "dlg_90_2")
	StartConversation(conversation, NPC, Spawn, "I'll do my best to answer.  What is it?")
end

function dlg_90_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri017.mp3", "", "", 4042847648, 718902311, Spawn)
	AddConversationOption(conversation, "There is something to what he said.  Look at those diseased treants so close to Kelethin.", "dlg_90_3")
	AddConversationOption(conversation, "I don't believe all Outsiders are to blame, though I am troubled by the diseased treants.")
	StartConversation(conversation, NPC, Spawn, "Dark events in Raimo's past lives continue to shadow his outlook to this day.  Not all Fae believe Outsiders are evil.")
end

function dlg_90_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri018.mp3", "", "", 3342872278, 3547383900, Spawn)
	AddConversationOption(conversation, "Are all the treants of the Faydark at risk?", "dlg_90_4")
	AddConversationOption(conversation, "That's what we get for trusting Outsiders.")
	StartConversation(conversation, NPC, Spawn, "Ah, the poor treants, rotting from the inside out.  We've tried to heal them, but by the time the disease is obvious, it's too late.  And I fear the disease is spreading.")
end

function dlg_90_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri025.mp3", "", "", 3597144400, 4127372896, Spawn)
	AddConversationOption(conversation, "I don't need to explain it, I just know that it is so.")
	StartConversation(conversation, NPC, Spawn, "Like Raimo, you also believe the Outsiders are responsible for this disease?  Tell me then, how are they doing this?")
end

function dlg_91_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri016.mp3", "", "", 3658860826, 2912932568, Spawn)
	AddConversationOption(conversation, "I spoke with Raimo...he blames Outsiders for bringing disease to the Faydarks.", "dlg_91_2")
	StartConversation(conversation, NPC, Spawn, "I'll do my best to answer.  What is it?")
end

function dlg_91_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri017.mp3", "", "", 4042847648, 718902311, Spawn)
	AddConversationOption(conversation, "There is something to what he said.  Look at those diseased treants so close to Kelethin.", "dlg_91_3")
	AddConversationOption(conversation, "I don't believe all Outsiders are to blame, though I am troubled by the diseased treants.")
	StartConversation(conversation, NPC, Spawn, "Dark events in Raimo's past lives continue to shadow his outlook to this day.  Not all Fae believe Outsiders are evil.")
end

function dlg_91_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri018.mp3", "", "", 3342872278, 3547383900, Spawn)
	AddConversationOption(conversation, "Are all the treants of the Faydark at risk?", "dlg_91_4")
	AddConversationOption(conversation, "That's what we get for trusting Outsiders.")
	StartConversation(conversation, NPC, Spawn, "Ah, the poor treants, rotting from the inside out.  We've tried to heal them, but by the time the disease is obvious, it's too late.  And I fear the disease is spreading.")
end

function dlg_91_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri019.mp3", "", "", 272244520, 663798395, Spawn)
	AddConversationOption(conversation, "What can we do about it?", "dlg_91_5")
	StartConversation(conversation, NPC, Spawn, "All of nature is bound together.  When one being suffers, those around it suffer as well.  There are spiders and beetles that seem to show signs of disease as well, poor wretches.")
end

function dlg_91_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri020.mp3", "", "", 1734937732, 3669646106, Spawn)
	AddConversationOption(conversation, "We must cull those that are diseased.", "dlg_91_6")
	AddConversationOption(conversation, "I cannot decide.")
	StartConversation(conversation, NPC, Spawn, "You stand at the cusp of your adulthood.  What do you recommend that we do with these creatures, .. GetName(Spawn) .. . What does your spirit tell you?")
end

function dlg_91_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri022.mp3", "", "", 2209003630, 1705635007, Spawn)
	AddConversationOption(conversation, "We...must cull the diseased creatures.")
	AddConversationOption(conversation, "I need to think about this before I make a decision.", "dlg_91_7")
	StartConversation(conversation, NPC, Spawn, "The decision is difficult, isn't it?  I believe that you know what the answer is and you find it distasteful or you would not hesitate.")
end

function dlg_92_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri023.mp3", "", "", 521100683, 3157912145, Spawn)
	AddConversationOption(conversation, "I will remove the diseased creatures.", "dlg_92_2")
	StartConversation(conversation, NPC, Spawn, "Destruction is not something we Fae take lightly, but it is sometimes the only way.  We have quarantined those creatures beginning to show signs of disease here on Green Knoll.")
end

function dlg_93_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri022.mp3", "", "", 2209003630, 1705635007, Spawn)
	AddConversationOption(conversation, "We...must cull the diseased creatures.")
	AddConversationOption(conversation, "I need to think about this before I make a decision.", "dlg_93_2")
	StartConversation(conversation, NPC, Spawn, "The decision is difficult, isn't it?  I believe that you know what the answer is and you find it distasteful or you would not hesitate.")
end

function dlg_93_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri023.mp3", "", "", 521100683, 3157912145, Spawn)
	AddConversationOption(conversation, "I will remove the diseased creatures.", "dlg_93_3")
	StartConversation(conversation, NPC, Spawn, "Destruction is not something we Fae take lightly, but it is sometimes the only way.  We have quarantined those creatures beginning to show signs of disease here on Green Knoll.")
end

function dlg_93_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri024.mp3", "", "", 2967863976, 831925805, Spawn)
	AddConversationOption(conversation, "I will.", "dlg_93_4")
	StartConversation(conversation, NPC, Spawn, "Thank you, .. GetName(Spawn) .. .  Let me know when you are ready to go on with your history lessons.")
end

function dlg_97_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri031.mp3", "", "", 180224809, 481643814, Spawn)
	AddConversationOption(conversation, "It just didn't seem right, hunting things that were so obviously sick.", "dlg_97_2")
	StartConversation(conversation, NPC, Spawn, "So do we all.  Whenever possible, we prefer the way of peace and harmony.  When we must kill something, we prefer it be in self-defense.  All things must be done for the greater good, even if it goes against our personal feelings on the matter.  In that way, it is our personal Ring of Fate.")
end

function dlg_97_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri032.mp3", "", "", 3434670788, 645022829, Spawn)
	AddConversationOption(conversation, "What would make them so diseased they could not be healed?", "dlg_97_3")
	StartConversation(conversation, NPC, Spawn, "I understand.  And you wonder why I would ask someone on their Rite of Passage to do this task.")
end

function dlg_97_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri033.mp3", "", "", 67685926, 1701511155, Spawn)
	AddConversationOption(conversation, "Something trying to stir up trouble between the Fae and the Outsiders?", "dlg_97_4")
	StartConversation(conversation, NPC, Spawn, "A good question. My suspicion is that some external force is at work.  A force which knows that many Fae will blame the Outsiders for the sickness.")
end

function dlg_97_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri034.mp3", "", "", 2195860271, 1512858419, Spawn)
	AddConversationOption(conversation, "There must be something we can do to find out.", "dlg_97_5")
	StartConversation(conversation, NPC, Spawn, "And amongst the Fae.  Our Queen Amree welcomes Outsiders, yet her heir Princess Saphronia does not.  We are so busy arguing about the Outsiders that this malevolent force is free to walk amongst us, unnoticed but for its ill effects.")
end

function dlg_97_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri035.mp3", "", "", 188163743, 2258694829, Spawn)
	AddConversationOption(conversation, "What sort of rumors?", "dlg_97_6")
	StartConversation(conversation, NPC, Spawn, "Our information is very limited, yet... I've heard a few rumors...")
end

function dlg_97_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri037.mp3", "", "", 2609946533, 3375103241, Spawn)
	AddConversationOption(conversation, "No.  What's that?", "dlg_97_7")
	StartConversation(conversation, NPC, Spawn, "I would not distract you from the Rite of Passage, .. GetName(Spawn) .. . if it were not so important to protect these creatures from the ravages of disease.  Have you heard of the Grender?")
end

function dlg_97_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri038.mp3", "", "", 907147106, 801087342, Spawn)
	AddConversationOption(conversation, "Has the Grender's involvement been proven?", "dlg_97_8")
	StartConversation(conversation, NPC, Spawn, "The Grender is a twisted creature rumored to be half-man, half-beast.  And like a parasite, it sucks the life force out of the world around it and gives nothing back in return.")
end

function dlg_97_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri039.mp3", "", "", 491933054, 4035179845, Spawn)
	AddConversationOption(conversation, "I'll locate the Grender!", "dlg_97_9")
	AddConversationOption(conversation, "I must finish some other tasks before I begin this.")
	StartConversation(conversation, NPC, Spawn, "No, it is only conjecture.  In fact, no one has proven it even exists.  But if all be true, our realm would be in considerable danger.  One of the Fae Royal Messengers has been trying to locate its lair.  Perhaps you can aid him?")
end

function dlg_97_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri040.mp3", "", "", 1144328884, 1034744188, Spawn)
	AddConversationOption(conversation, "Where will I find the Fae Royal Messenger?", "dlg_97_10")
	StartConversation(conversation, NPC, Spawn, "Excellent, .. GetName(Spawn) .. . It might just be a rumor, but all rumors have some basis in fact.  If nothing else, you may help disprove that the Grender even exists.")
end

function dlg_97_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/lady_katri_eloranta/_exp03/exp03_cty_kelethin/tutorials/qst_katri/qst_katri042.mp3", "", "", 1497033190, 2749193313, Spawn)
	AddConversationOption(conversation, "I'll let you know what I find out.", "dlg_97_11")
	StartConversation(conversation, NPC, Spawn, "Speak with Kalamar Vesinger, our local Grender expert.  You'll find him at Joleena's Restaurant in Kelethin.  Safe journeys.")
end


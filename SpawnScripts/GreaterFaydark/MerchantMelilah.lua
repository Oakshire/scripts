--[[
	Script Name	: SpawnScripts/GreaterFaydark/MerchantMelilah.lua
	Script Purpose	: Merchant Melilah 
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

		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "That depends.", "dlg_17_1")
	AddConversationOption(conversation, "No, thanks.")
	StartConversation(conversation, NPC, Spawn, "Did you want to earn a little commission on a job for me?")
	if convo==45 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes.  She asked me to tell you...", "dlg_45_1")
		AddConversationOption(conversation, "Um...I think I've lost the note you gave me earlier.")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Have you spoken with HER yet?")
	end

	if convo==46 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes.  She asked me to tell you...", "dlg_46_1")
		AddConversationOption(conversation, "Um...I think I've lost the note you gave me earlier.")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Have you spoken with HER yet?")
	end

	if convo==48 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You two are fighting over your father's estate?", "dlg_48_1")
		AddConversationOption(conversation, "Relax! I just said 'hello' to you.")
		StartConversation(conversation, NPC, Spawn, "Well?")
	end

	if convo==49 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You two are fighting over your father's estate?", "dlg_49_1")
		AddConversationOption(conversation, "Relax! I just said 'hello' to you.")
		StartConversation(conversation, NPC, Spawn, "Well?")
	end

end

function dlg_17_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Then why don't you go yourself?", "dlg_17_2")
	StartConversation(conversation, NPC, Spawn, "I need to send a note to my sister Fallulah.  She's just over there near the bank.")
end

function dlg_17_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You want me to take a note to her so you don't have to speak to her yourself?", "dlg_17_3")
	StartConversation(conversation, NPC, Spawn, "Because we're not SPEAKING with each other! Ooooh....she makes me SO angry! Just thinking about what she said...but...okay...I'm calmer now.  Anyway, if I didn't need to contact her, I wouldn't, but it can't be avoided.")
end

function dlg_17_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Well.  Okay.", "dlg_17_4")
	StartConversation(conversation, NPC, Spawn, "Exactly.  Like I said, a little commission for an easy job.  I'd really appreciate it.")
end

function dlg_45_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I won't.")
	StartConversation(conversation, NPC, Spawn, "It figures.  The one time...just a moment...let me write...out...another...note.  Don't lose this one.")
end

function dlg_46_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "She said to tell you that she 'wants the clock' and that you'll know what that means.", "dlg_46_2")
	StartConversation(conversation, NPC, Spawn, "How DARE she presume to talk to me! Even if it's only through you! I have a good mind to...calm...deep breaths...What did she have to say?")
end

function dlg_46_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Er, can I ask you what's going on between the two of you?", "dlg_46_3")
	StartConversation(conversation, NPC, Spawn, "She can't HAVE the clock.  It's MINE!  I can't BELIEVE how grasping and conniving...")
end

function dlg_46_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Um, okay.", "dlg_46_4")
	StartConversation(conversation, NPC, Spawn, "You still have the note? Go ahead and read it.  It explains everything.")
end

function dlg_49_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Did you tell her how you felt?", "dlg_49_2")
	StartConversation(conversation, NPC, Spawn, "I'm not fighting, SHE'S fighting.  All I ever hear from her is, 'I want this,' or 'I want that.'  She's never ONCE asked me how I was feeling, or said anything about how much work it's been for me to handle things.")
end

function dlg_49_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Maybe.  But folks show sadness in different ways.  Maybe her way is different than yours.", "dlg_49_3")
	StartConversation(conversation, NPC, Spawn, "It's obvious, isn't it?")
end

function dlg_49_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "She needs you.", "dlg_49_4")
	StartConversation(conversation, NPC, Spawn, "Hrmph.  Maybe.  She always did have it easier than me.  Fallulah was daddy's favorite.  She didn't have to set up shop until he passed away, and then she was always pestering me about how to do this and how to do that.")
end

function dlg_49_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Sure.", "dlg_49_5")
	StartConversation(conversation, NPC, Spawn, "I hadn't really thought of it that way.  Maybe I have misjudged her.  I tell you what.  Let me take back that note and write a different one.  Would you take this one to her instead?")
end

function dlg_49_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "merchant_melilah/_exp03/exp03_cty_kelethin/quest/qst_sisters/qst_melilah014.mp3", "", "", 3364592352, 3085055338, Spawn)
	AddConversationOption(conversation, "Glad I could help.", "dlg_49_6")
	StartConversation(conversation, NPC, Spawn, "And...thank you.  You helped me look at things a different way.")
end


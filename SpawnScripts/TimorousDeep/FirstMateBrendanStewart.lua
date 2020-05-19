--[[
	Script Name	: SpawnScripts/TimorousDeep/FirstMateBrendanStewart.lua
	Script Purpose	: First Mate Brendan Stewart 
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

	PlayFlavor(NPC, "voiceover/english/rok_questvo/first_mate_brendan_stewart/_exp04/exp04_rgn_timorous_deep/chrykori_tie/brendan/brendan000.mp3", "", "sigh", 2683407164, 2894358494, Spawn)
	AddConversationOption(conversation, "What's the hold up? ", "dlg_13_1")
	AddConversationOption(conversation, "Yes, a pity, good day to you.")
	StartConversation(conversation, NPC, Spawn, "A fine day for sailing, isn't it? A pity we're landlocked.")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/first_mate_brendan_stewart/_exp04/exp04_rgn_timorous_deep/chrykori_tie/brendan/brendan001.mp3", "", "", 939692857, 2041094553, Spawn)
	AddConversationOption(conversation, "And you trust her judgment? ", "dlg_13_2")
	StartConversation(conversation, NPC, Spawn, "The Captain says we can't, so we can't... She hasn't explained why, but I can tell she is worried.")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/first_mate_brendan_stewart/_exp04/exp04_rgn_timorous_deep/chrykori_tie/brendan/brendan002.mp3", "", "", 4242714934, 1503091728, Spawn)
	AddConversationOption(conversation, "So that's why you're here? ", "dlg_13_3")
	StartConversation(conversation, NPC, Spawn, "I trust the Captain unfailingly. She is the finest judge of a ship I've ever seen, and also of potentially profitable trade routes.")
end

function dlg_13_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/first_mate_brendan_stewart/_exp04/exp04_rgn_timorous_deep/chrykori_tie/brendan/brendan003.mp3", "", "", 1908359692, 855587357, Spawn)
	AddConversationOption(conversation, "What was your reaction to Kunark opening up? ", "dlg_13_4")
	StartConversation(conversation, NPC, Spawn, "Yes, when we all realized that the way had opened to Kunark, she dropped all of our other routes and signed us up to come out here...")
end

function dlg_13_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/first_mate_brendan_stewart/_exp04/exp04_rgn_timorous_deep/chrykori_tie/brendan/brendan004.mp3", "", "frustrate", 1341886024, 4086437292, Spawn)
	AddConversationOption(conversation, "But that didn't stop you from rushing out. ", "dlg_13_5")
	StartConversation(conversation, NPC, Spawn, "Quite shocked... When the Sarnak parties started attacking our boats, no one knew quite what to think of it. The loss of the Leaky Drake was stunning. When we realized what it truly meant, we had even less of an idea of what to think...")
end

function dlg_13_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/first_mate_brendan_stewart/_exp04/exp04_rgn_timorous_deep/chrykori_tie/brendan/brendan005.mp3", "", "", 4131302945, 2902922789, Spawn)
	AddConversationOption(conversation, "A mistake anyone can make.", "dlg_13_6")
	StartConversation(conversation, NPC, Spawn, "No, it didn't. And now I wonder if we shouldn't have thought more on it. This is dangerous territory, and we ignored that fairly excellently.")
end


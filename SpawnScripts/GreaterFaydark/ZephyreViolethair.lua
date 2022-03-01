--[[
	Script Name	: SpawnScripts/GreaterFaydark/ZephyreViolethair.lua
	Script Purpose	: Zephyre Violethair 
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I might.", "dlg_21_1")
	AddConversationOption(conversation, "Actually, I was hoping you could tell me a bit about Kelethin.")
	AddConversationOption(conversation, "No, sorry.")
	StartConversation(conversation, NPC, Spawn, "Hi! Do you have a moment to help me out?")
	if convo==22 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I might.", "dlg_22_1")
		AddConversationOption(conversation, "Actually, I was hoping you could tell me a bit about Kelethin.")
		AddConversationOption(conversation, "No, sorry.")
		StartConversation(conversation, NPC, Spawn, "Hi! Do you have a moment to help me out?")
	end

	if convo==23 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I might.", "dlg_23_1")
		AddConversationOption(conversation, "Actually, I was hoping you could tell me a bit about Kelethin.")
		AddConversationOption(conversation, "No, sorry.")
		StartConversation(conversation, NPC, Spawn, "Hi! Do you have a moment to help me out?")
	end

end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How did the Fae come to take over the city?")
	AddConversationOption(conversation, "I've changed my mind.  What did you need help with?", "dlg_21_2")
	StartConversation(conversation, NPC, Spawn, "Yes.  What would you like to know?")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd be glad to help.")
	AddConversationOption(conversation, "Sorry, I have something else to attend to just now.", "dlg_21_3")
	StartConversation(conversation, NPC, Spawn, "My family has always lived in Kelethin and I'd like to honor their memories.  The problem I'm having is those darn orcs! They send out their scouts and disrupt me at my prayers.  I'd like to have them cleared out so that I can finish the ritual to honor my ancestors in peace.")
end

function dlg_22_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How did the Fae come to take over the city?")
	AddConversationOption(conversation, "I've changed my mind.  What did you need help with?", "dlg_22_2")
	StartConversation(conversation, NPC, Spawn, "Yes.  What would you like to know?")
end

function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What happened to your family?", "dlg_22_3")
	StartConversation(conversation, NPC, Spawn, "It wasn't a 'take over.' Not the way the orcs would've done.  They developed an affinity for us, the Feir'Dal.  We're quite similar in many ways, actually.  The Fae helped rebuild Kelethin after the War of the Fay, and over time, came to look upon it as their home.")
end

function dlg_22_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "There are very few wood elves in Kelethin now.", "dlg_22_4")
	StartConversation(conversation, NPC, Spawn, "My family's roots have been in Kelethin for many Ages.  I'm the last one now, so it's important for me to keep up what traditions are left.  When the Word of the Tranquil came to Kelethin, most of my friends left, presumably to Qeynos.  Others wandered away, seeking guidance from the gods.  And of course, the gods did not respond.")
end

function dlg_22_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Have the orcs ever attacked Kelethin directly?", "dlg_22_5")
	AddConversationOption(conversation, "I see.")
	StartConversation(conversation, NPC, Spawn, "Seems that way, doesn't it?  Many of us prefer to keep to ourselves now.  Some, like me and Traeger, are fine with all the newcomers.  Maybe it's the catalyst we need, to stop living in the past and to think of the future.")
end

function dlg_22_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How long did that last?", "dlg_22_6")
	StartConversation(conversation, NPC, Spawn, "Those cowards have seen fit only to besiege Kelethin, for they know that our magic is stronger than theirs.  Ours is the power of Growth, which their kind cannot appreciate.  When the Second Rallosian Army rampaged elsewhere, the orcs tried to burn us down, then settled beneath us in siege.")
end

function dlg_22_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How did Kelethin survive?", "dlg_22_7")
	StartConversation(conversation, NPC, Spawn, "Long enough, unfortunately.  Though Growth is our ally, it cannot conjure up sustenance for a city for that length of time.  And many perished defending the lifts.  The Fae erected a barrier beneath Kelethin to keep the orcs away, but they weren't strong enough to deter them entirely.")
end

function dlg_22_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What was it you needed help with again?", "dlg_22_8")
	AddConversationOption(conversation, "Thank you for telling me this.")
	StartConversation(conversation, NPC, Spawn, "The Rallosian Army was defeated by the Green Mist. Our orcs met a different scourge--the brownies of the Lesser Faydark.  We're not sure what motivated them, but they came to our aid, breaking the siege.  And when they'd won, they simply returned home.  I suspect they routed the orcs just because they could.")
end

function dlg_22_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd be glad to help.", "dlg_22_9")
	AddConversationOption(conversation, "Sorry, I have something else to attend to just now.")
	StartConversation(conversation, NPC, Spawn, "My family has always lived in Kelethin and I'd like to honor their memories.  The problem I'm having is those darn orcs! They send out their scouts and disrupt me at my prayers.  I'd like to have them cleared out so that I can finish the ritual to honor my ancestors in peace.")
end

function dlg_23_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd be glad to help.", "dlg_23_2")
	AddConversationOption(conversation, "Sorry, I have something else to attend to just now.")
	StartConversation(conversation, NPC, Spawn, "My family has always lived in Kelethin and I'd like to honor their memories.  The problem I'm having is those darn orcs! They send out their scouts and disrupt me at my prayers.  I'd like to have them cleared out so that I can finish the ritual to honor my ancestors in peace.")
end

function dlg_23_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll do my best.", "dlg_23_3")
	StartConversation(conversation, NPC, Spawn, "Could you? That's great!  Though the Feir'Dal are not as prominent here as we once were, we still keep to the old ways as much as we can.  You have no idea what your help means to me!")
end


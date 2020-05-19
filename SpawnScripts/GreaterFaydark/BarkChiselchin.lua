--[[
	Script Name	: SpawnScripts/GreaterFaydark/BarkChiselchin.lua
	Script Purpose	: Bark Chiselchin <Defense Trainer>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Excuse me?", "dlg_27_1")
	AddConversationOption(conversation, "I don't need to speak with you.")
	StartConversation(conversation, NPC, Spawn, "Your form needs improvement!  Keep your back straight!")
end

function dlg_27_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Should I know anything more?", "dlg_27_2")
	StartConversation(conversation, NPC, Spawn, "It's all in the posture.  Always be ready, that's the path to self-defense! You have to be ready to sway like the wind, to flow like water and to bite like an angry fly.  That's the art of self-defense!")
end

function dlg_27_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Got it.", "dlg_27_3")
	StartConversation(conversation, NPC, Spawn, "You should learn all your life, kid.  Otherwise, life isn't worth living.  That's the whole truth of self-defense.  You want to last longer than your opponent.  Self-defense isn't something that can be taught, but it can be learned.  Got it?")
end

function dlg_27_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Will do.", "dlg_27_4")
	StartConversation(conversation, NPC, Spawn, "If you're ever jumped again, it's your own fault.  Keep your shoulders back, your ears clean and your head high.  Now off with you! Back to Lady Katri, I've business to attend to.")
end


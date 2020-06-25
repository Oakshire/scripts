--[[
	Script Name	: SpawnScripts/ElddarGrove/LookoutVenylle.lua
	Script Purpose	: Lookout Venylle 
	Script Author	: John Adams
	Script Date	: 2008.09.28
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What unnatural dangers lurk in the dark?", "dlg_10_1")
	AddConversationOption(conversation, "Don't let me keep you from your vigilance.  ")
	StartConversation(conversation, NPC, Spawn, "Well, greetings, friend. I'm sorry I've no time for chatting. We rangers must be ever watchful. Many dangers lurk in the dark. Some natural, some ... unnatural.")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I've heard of the name Holly Windstalker.  I think I'd like to see the grave.", "dlg_10_2")
	AddConversationOption(conversation, "I tend to stay away from graves that may not be able to hold their dead. ")
	StartConversation(conversation, NPC, Spawn, "It is ill to speak of the dead, but knowing the dangers that prowl in the dark is for your own safety. Rumor has it, that Holly Windstalker once again walks the hills.  I won't guarantee this is true, but neither will I discount it. What I do know is a grave bearing her name sits on a hill overlooking the village.  You'll see for yourself; she was laid to rest years ago.")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you.  I'll follow those directions.", "dlg_10_3")
	StartConversation(conversation, NPC, Spawn, "Ahh ... very well, you are a daring soul! To get to the grave, follow the aqueduct from Qeynos to Windstalker Village. The village is built around the waterwheel that keeps the aqueduct flowing.  The duct passes through rock so you may lose sight of it for a time.  Just continue around the mountain, and you'll see it on the other side.")
end


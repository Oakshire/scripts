--[[
	Script Name	: SpawnScripts/QeynosHarbor/aBarbarianTrader.lua
	Script Purpose	: a barbarian trader <Far Seas Trading Company>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
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
	
	local convo = math.random(1, 5)
	
	if convo == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1001.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "But I just thought...", "dlg_36_1")
		AddConversationOption(conversation, "I wouldn't trust you to scrub my boots, much less fetch me a drink.")
		StartConversation(conversation, NPC, Spawn, "What are you staring at?  Do I look like a tavern wench to you?  There must be a short plank for you around here somewhere.")
	elseif convo == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1001.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "But I just thought...", "dlg_37_1")
		AddConversationOption(conversation, "I wouldn't trust you to scrub my boots, much less fetch me a drink.")
		StartConversation(conversation, NPC, Spawn, "What are you staring at?  Do I look like a tavern wench to you?  There must be a short plank for you around here somewhere.")
	elseif convo == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1001.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "But I just thought...", "dlg_38_1")
		AddConversationOption(conversation, "I wouldn't trust you to scrub my boots, much less fetch me a drink.")
		StartConversation(conversation, NPC, Spawn, "What are you staring at?  Do I look like a tavern wench to you?  There must be a short plank for you around here somewhere.")
	elseif convo == 4 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1001.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "But I just thought...", "dlg_39_1")
		AddConversationOption(conversation, "I wouldn't trust you to scrub my boots, much less fetch me a drink.")
		StartConversation(conversation, NPC, Spawn, "What are you staring at?  Do I look like a tavern wench to you?  There must be a short plank for you around here somewhere.")
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1001.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "But I just thought...", "dlg_40_1")
		AddConversationOption(conversation, "I wouldn't trust you to scrub my boots, much less fetch me a drink.")
		StartConversation(conversation, NPC, Spawn, "What are you staring at?  Do I look like a tavern wench to you?  There must be a short plank for you around here somewhere.")
	end

end


--[[
	Script Name	: SpawnScripts/FrostfangSea/ScionofDiscord.lua
	Script Purpose	: Scion of Discord <Carnage Appraiser>
	Script Author	: Foof
	Script Date	: 2013.10.30
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end
--[[
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1023.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1023.mp3", "", "", 0, 0, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1023.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Quite so.", "dlg_30_1")
	AddConversationOption(conversation, "I am not ready yet.")
	StartConversation(conversation, NPC, Spawn, "The will of Discord is to let your skill distinguish you from others.  It is not just how you fight, but how often you are the source of death.  Are you skilled enough to be considered among the elite?")
end

function dlg_30_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How can I show you? ", "dlg_30_2")
	AddConversationOption(conversation, "On second thought, I am not ready. Farewell. ")
	StartConversation(conversation, NPC, Spawn, "I bring favor to those that can back up their words, though your skill is yet to be seen.  Consider your words or they will bring you shame! ")
end

function dlg_30_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Let us begin!  ", "dlg_30_3")
	AddConversationOption(conversation, "I am not sure I can do that right now. Farewell. ")
	StartConversation(conversation, NPC, Spawn, "The test is simple: kill or be killed.  Plenty of would-be slayers roam the battlefield as we speak.  You must deliver death in order to be given rewards.  Are you ready to back your words? ")
end

function dlg_30_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	StartConversation(conversation, NPC, Spawn, "Discord be with you!")
end
--]]
--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1023.mp3", "", "", 0, 0, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1023.mp3", "", "", 0, 0, Spawn)
--]]


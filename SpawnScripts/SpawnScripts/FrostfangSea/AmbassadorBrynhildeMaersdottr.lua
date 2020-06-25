--[[
	Script Name	: SpawnScripts/FrostfangSea/AmbassadorBrynhildeMaersdottr.lua
	Script Purpose	: Ambassador Brynhilde Maersdottr <Change of Citizenship>
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	:
--]]

require"SpawnScripts/FrostfangSea/halas_proximity_cheer"

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "ProxCheer")
end

function respawn(NPC)
	spawn(NPC)
end
--[[
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "brynhilde_maersdottr/halas/city_population/halas_betrayal_001.mp3", "", "", 97799044, 4230411082, Spawn)
	AddConversationOption(conversation, "Maybe, tell me more.", "dlg_3_1")
	AddConversationOption(conversation, "No thank you, I'm very happy here.")
	StartConversation(conversation, NPC, Spawn, "Greetings!  I am here to offer assistance if you wish to change citizenship.  Is this of interest to you?")
	if convo==6 then
		PlayFlavor(NPC, "brynhilde_maersdottr/halas/city_population/halas_betrayal_001.mp3", "", "", 97799044, 4230411082, Spawn)
		AddConversationOption(conversation, "Maybe, tell me more.", "dlg_6_1")
		AddConversationOption(conversation, "No thank you, I'm very happy here.")
		StartConversation(conversation, NPC, Spawn, "Greetings!  I am here to offer assistance if you wish to change citizenship.  Is this of interest to you?")
	end

	if convo==8 then
		PlayFlavor(NPC, "brynhilde_maersdottr/halas/city_population/halas_betrayal_001.mp3", "", "", 97799044, 4230411082, Spawn)
		AddConversationOption(conversation, "Maybe, tell me more.", "dlg_8_1")
		AddConversationOption(conversation, "No thank you, I'm very happy here.")
		StartConversation(conversation, NPC, Spawn, "Greetings!  I am here to offer assistance if you wish to change citizenship.  Is this of interest to you?")
	end

	if convo==9 then
		PlayFlavor(NPC, "brynhilde_maersdottr/halas/city_population/halas_betrayal_001.mp3", "", "", 97799044, 4230411082, Spawn)
		AddConversationOption(conversation, "Maybe, tell me more.", "dlg_9_1")
		AddConversationOption(conversation, "No thank you, I'm very happy here.")
		StartConversation(conversation, NPC, Spawn, "Greetings!  I am here to offer assistance if you wish to change citizenship.  Is this of interest to you?")
	end

end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "brynhilde_maersdottr/halas/city_population/halas_betrayal_002.mp3", "", "", 1600213250, 4013876704, Spawn)
	AddConversationOption(conversation, "Yes, can you help me to do that?", "dlg_3_2")
	AddConversationOption(conversation, "Actually, I was thinking of changing citizenship to ... elsewhere.")
	StartConversation(conversation, NPC, Spawn, "As you're probably aware, New Halas has established good relations with the cities of Qeynos and Kelethin, and when someone wishes to switch citizenship to these cities we try to make the process as friendly as possible. Is this your wish?")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "brynhilde_maersdottr/halas/city_population/halas_betrayal_003.mp3", "", "", 2358151408, 4270279466, Spawn)
	AddConversationOption(conversation, "Qeynos, if you please.", "dlg_3_3")
	AddConversationOption(conversation, "Kelethin, if you please.")
	AddConversationOption(conversation, "Neither, I have changed my mind.  Thanks anyway!")
	StartConversation(conversation, NPC, Spawn, "I would be happy to help.  Are you interested in becoming a citizen of Qeynos, or Kelethin?")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "brynhilde_maersdottr/halas/city_population/halas_betrayal_002.mp3", "", "", 1600213250, 4013876704, Spawn)
	AddConversationOption(conversation, "Yes, can you help me to do that?", "dlg_8_2")
	AddConversationOption(conversation, "Actually, I was thinking of changing citizenship to ... elsewhere.")
	StartConversation(conversation, NPC, Spawn, "As you're probably aware, New Halas has established good relations with the cities of Qeynos and Kelethin, and when someone wishes to switch citizenship to these cities we try to make the process as friendly as possible. Is this your wish?")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "brynhilde_maersdottr/halas/city_population/halas_betrayal_003.mp3", "", "", 2358151408, 4270279466, Spawn)
	AddConversationOption(conversation, "Qeynos, if you please.", "dlg_8_3")
	AddConversationOption(conversation, "Kelethin, if you please.")
	AddConversationOption(conversation, "Neither, I have changed my mind.  Thanks anyway!")
	StartConversation(conversation, NPC, Spawn, "I would be happy to help.  Are you interested in becoming a citizen of Qeynos, or Kelethin?")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "brynhilde_maersdottr/halas/city_population/halas_betrayal_002.mp3", "", "", 1600213250, 4013876704, Spawn)
	AddConversationOption(conversation, "Yes, can you help me to do that?", "dlg_9_2")
	AddConversationOption(conversation, "Actually, I was thinking of changing citizenship to ... elsewhere.")
	StartConversation(conversation, NPC, Spawn, "As you're probably aware, New Halas has established good relations with the cities of Qeynos and Kelethin, and when someone wishes to switch citizenship to these cities we try to make the process as friendly as possible. Is this your wish?")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "brynhilde_maersdottr/halas/city_population/halas_betrayal_003.mp3", "", "", 2358151408, 4270279466, Spawn)
	AddConversationOption(conversation, "Qeynos, if you please.", "dlg_9_3")
	AddConversationOption(conversation, "Kelethin, if you please.")
	AddConversationOption(conversation, "Neither, I have changed my mind.  Thanks anyway!")
	StartConversation(conversation, NPC, Spawn, "I would be happy to help.  Are you interested in becoming a citizen of Qeynos, or Kelethin?")
end
--]]
--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "", 0, 0, Spawn)
--]]


--[[
	Script Name	: SpawnScripts/SouthQeynos/WyniaVethe.lua
	Script Purpose	: Wynia Vethe <Achievement Counsel>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1011.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I understand. I'd like the card now, please.", "dlg_19_1")
		AddConversationOption(conversation, "No thanks. I don't want the card.")
	StartConversation(conversation, NPC, Spawn, "I've been authorized by the powers that be to grant you a lucky card. It's possessed with immense power, and will allow you to rethink some of your achievement choices, Ravelshian, specifically those related to your class. Think of it like an ace up your sleeve! But be careful, it only has five charges, so use it wisely.")
	if convo==20 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1011.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I understand. I'd like the card now, please.", "dlg_20_1")
		AddConversationOption(conversation, "No thanks. I don't want the card.")
		StartConversation(conversation, NPC, Spawn, "I've been authorized by the powers that be to grant you a lucky card. It's possessed with immense power, and will allow you to rethink some of your achievement choices, Ravelshian, specifically those related to your class. Think of it like an ace up your sleeve! But be careful, it only has five charges, so use it wisely.")
	end

end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thanks Wynia Vethe.", "dlg_20_2")
	StartConversation(conversation, NPC, Spawn, "Here you are. Be careful with it, and remember, the magic will run out!")
end


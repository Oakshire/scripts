--[[
	Script Name	: SpawnScripts/GreaterFaydark/AeliaNaeni.lua
	Script Purpose	: Aelia Naeni <Achievement Counsel>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I understand. I'd like the card now, please.", "dlg_11_1")
	AddConversationOption(conversation, "No thanks. I don't want the card.")
	StartConversation(conversation, NPC, Spawn, "I've been authorized by the powers that be to grant you a lucky card. It's possessed with immense power, and will allow you to rethink some of your achievement choices, .. GetName(Spawn) .. . specifically those related to your class. Think of it like an ace up your sleeve! But be careful, it only has five charges, so use it wisely.")
end


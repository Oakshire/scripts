--[[
	Script Name	: SpawnScripts/GreaterFaydark/PaivaKapanen.lua
	Script Purpose	: Paiva Kapanen <Barmaid>
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
	AddConversationOption(conversation, "Nothing, thanks.", "dlg_8_1")
	StartConversation(conversation, NPC, Spawn, "What can I get for you?")
	if convo==9 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing, thanks.", "dlg_9_1")
		StartConversation(conversation, NPC, Spawn, "What can I get for you?")
	end

end


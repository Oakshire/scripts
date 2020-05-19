--[[
	Script Name	: SpawnScripts/GreaterFaydark/JysolinNerala.lua
	Script Purpose	: Jysolin Nerala <Bartender>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Nothing right now, thanks.", "dlg_6_1")
	StartConversation(conversation, NPC, Spawn, "What'll you have?")
	if convo==7 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing right now, thanks.", "dlg_7_1")
		StartConversation(conversation, NPC, Spawn, "What'll you have?")
	end

end


--[[
	Script Name	: SpawnScripts/EnchantedLands/DobbinsFallvale.lua
	Script Purpose	: Dobbins Fallvale <Old Bog Mountain Unit>
	Script Author	: Cynnar
	Script Date	: 2015.02.24
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1020.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "But?", "dlg_3_1")
		AddConversationOption(conversation, "Not me.")
	StartConversation(conversation, NPC, Spawn, "I don't quite know what's going on here, but the recent aggression from the Runnyeye goblins has me worried. I wanted to help but...")
	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1020.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "But?", "dlg_4_1")
		AddConversationOption(conversation, "Not me.")
		StartConversation(conversation, NPC, Spawn, "I don't quite know what's going on here, but the recent aggression from the Runnyeye goblins has me worried. I wanted to help but...")
	end

end


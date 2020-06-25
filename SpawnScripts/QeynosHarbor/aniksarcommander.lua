--[[
	Script Name	: SpawnScripts/QeynosHarbor/aniksarcommander.lua
	Script Purpose	: an iksar commander <Battlefield of Ganak>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1038.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What do you mean?", "dlg_0_1")
		AddConversationOption(conversation, "I disagree.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "There is no greater honor than to taste victory on the Battlefield of Ganak!")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1038.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What do you mean?", "dlg_1_1")
		AddConversationOption(conversation, "I disagree.  Goodbye.")
		StartConversation(conversation, NPC, Spawn, "There is no greater honor than to taste victory on the Battlefield of Ganak!")
	end

	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1038.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What do you mean?", "dlg_2_1")
		AddConversationOption(conversation, "I disagree.  Goodbye.")
		StartConversation(conversation, NPC, Spawn, "There is no greater honor than to taste victory on the Battlefield of Ganak!")
	end

	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1038.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What do you mean?", "dlg_3_1")
		AddConversationOption(conversation, "I disagree.  Goodbye.")
		StartConversation(conversation, NPC, Spawn, "There is no greater honor than to taste victory on the Battlefield of Ganak!")
	end

end


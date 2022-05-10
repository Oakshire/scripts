--[[
	Script Name	: SpawnScripts/ElddarGrove/MusicianZwena.lua
	Script Purpose	: Musician Zwena 
	Script Author	: Dorbin
	Script Date	: 2022.05.09
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
local Message = 5525

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
 if GetFactionAmount(Spawn,11) <0 then
    PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
    else
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1035.mp3", "", "", 0, 0, Spawn)
	if GetQuestStep(Spawn,Message)==1 then
	AddConversationOption(conversation, "I'd love to hear a song, but I'm here to give you a note from Lunaru.","Message1")
	end
	AddConversationOption(conversation, "Not today, thanks.", "dlg_2_1")
	StartConversation(conversation, NPC, Spawn, "Perhaps I could entertain you with a song?")
	
    end
end

function Message1(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm sure he will make time for you.","Message2")
	StartConversation(conversation, NPC, Spawn, "Mmmm, thank you... I do so hope he can get away from his studies tonight.")
end   

function Message2(NPC, Spawn)
    SetStepComplete(Spawn,Message,1)
	FaceTarget(NPC, Spawn)
end
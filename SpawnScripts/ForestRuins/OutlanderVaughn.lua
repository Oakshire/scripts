--[[
	Script Name	: SpawnScripts/ForestRuins/OutlanderVaughn.lua
	Script Purpose	: Outlander Vaughn 
	Script Author	: John Adams
	Script Date	: 2008.09.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	ProvidesQuest(NPC, 1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0)

	if HasCompletedQuest(Spawn, 1) then
	else
		AddConversationOption(conversation, "What is it you need?", "dlg_4_1")
		AddConversationOption(conversation, "No time for charity. ")
		StartConversation(conversation, NPC, Spawn, "Am I ever in a bind! Will you please help me?")
	end

end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll see what I can do.", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "Those wretched Blackfurl deckhands stole my satchel!  It had everything that was important to me. Please, recover my satchel!")
end

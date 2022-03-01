--[[
	Script Name	: SpawnScripts/ElddarGrove/Adrianna.lua
	Script Purpose	: Adrianna <Provisioner>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/merchant_adrianna/qey_elddar/merchantadrianna000.mp3", "", "", 2772064820, 4249063361, Spawn)
	AddConversationOption(conversation, "No, I am good to go thanks. ", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Hello there!  Can I interest you in any wares for your travels?")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/merchant_adrianna/qey_elddar/merchantadrianna000.mp3", "", "", 2772064820, 4249063361, Spawn)
	AddConversationOption(conversation, "No, I am good to go thanks. ", "dlg_9_2")
	StartConversation(conversation, NPC, Spawn, "Hello there!  Can I interest you in any wares for your travels?")
end


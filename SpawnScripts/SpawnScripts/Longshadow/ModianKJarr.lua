--[[
	Script Name	: SpawnScripts/Longshadow/ModianKJarr.lua
	Script Purpose	: Modian K`Jarr 
	Script Author	: John Adams
	Script Date	: 2008.09.29
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

	PlayFlavor(NPC, "voiceover/english/modian_k_jarr/fprt_hood05/std_de_male_modian_kjarr.mp3", "", "", 531408061, 599233569, Spawn)
	AddConversationOption(conversation, "I guess I will.", "dlg_5_1")
	StartConversation(conversation, NPC, Spawn, "If you couldn't tell, I'm enjoying a drink. Now that your curiousity has been sated, perhaps you'll leave me alone?")
end
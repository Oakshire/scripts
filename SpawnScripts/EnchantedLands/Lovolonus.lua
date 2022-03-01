--[[
	Script Name	: SpawnScripts/EnchantedLands/Lovolonus.lua
	Script Purpose	: Lo'volonus 
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

		PlayFlavor(NPC, "voiceover/english/oodan_the_tranquil/enchanted/oodan000.mp3", "", "", 1489187634, 2222979196, Spawn)
		AddConversationOption(conversation, "Words to live by.", "dlg_12_1")
	StartConversation(conversation, NPC, Spawn, "Control your emotions and you will control your destiny.")
end


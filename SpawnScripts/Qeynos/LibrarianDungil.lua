--[[
	Script Name	: SpawnScripts/SouthQeynos/LibrarianDungil.lua
	Script Purpose	: Librarian Dungil 
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1060.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nevermind.", "dlg_0_1")
    	StartConversation(conversation, NPC, Spawn, "Please be quick, I am very busy.")

	

end


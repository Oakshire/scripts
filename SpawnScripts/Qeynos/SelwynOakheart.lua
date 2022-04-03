--[[
	Script Name	: SpawnScripts/SouthQeynos/SelwynOakheart.lua
	Script Purpose	: Selwyn Oakheart 
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
    AddConversationOption(conversation,"Alright.")
	PlayFlavor(NPC, "voiceover/english/selwyn_oakheart/qey_south/quests/selwyn_oakheart/selwyn017.mp3", "", "", 3697608701, 2678534832, Spawn)
	StartConversation(conversation, NPC, Spawn, "I'm sorry, dear. I don't think I'd be able to help you with anything right now. I'm very busy.")
end


--[[
	Script Name	: SpawnScripts/FrostfangSea/NikolasMacCraifft.lua
	Script Purpose	: Nikolas MacCraifft <The White Raven>
	Script Author	: Ememjr
	Script Date	: 2022.02.05
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

	

		PlayFlavor(NPC, "nickolas_maccraifft/tradeskill/live_quests/nickolas_maccraifft_001.mp3", "", "", 3541919882, 975982906, Spawn)
		AddConversationOption(conversation, "I've been asked to deliver this letter to you, from the Ironforge Exchange.  They wish to offer their support and aid, and that of their allies.", "dlg_3_1")
	StartConversation(conversation, NPC, Spawn, "Hail to you, also.  May I help you with something?")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "nickolas_maccraifft/tradeskill/live_quests/nickolas_maccraifft_002.mp3", "", "", 3549928069, 1273662086, Spawn)
		AddConversationOption(conversation, "I will do that.", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Ah, this is good news indeed, and much appreciated.  Founding a new city is hard work indeed, especially when unexpected problems keep arising.  Please return with my thanks and say we would welcome their assistance.")
end


--[[
	Script Name	: SpawnScripts/GreaterFaydark/apunishedmagiapprentice.lua
	Script Purpose	: a punished magi apprentice 
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

		PlayFlavor(NPC, "a_punished_magi_apprentice/_exp03/exp03_rgn_greater_faydark/punished_orc_magi/punished_orc_magi001.mp3", "", "", 1609553154, 632780580, Spawn)
	AddConversationOption(conversation, "Why are you working here with the slaves?", "dlg_2_1")
	AddConversationOption(conversation, "Nothing, I'm leaving.")
	StartConversation(conversation, NPC, Spawn, "Whatta you want?  ")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "a_punished_magi_apprentice/_exp03/exp03_rgn_greater_faydark/punished_orc_magi/punished_orc_magi002.mp3", "", "", 2021609601, 1807140680, Spawn)
	AddConversationOption(conversation, "Good luck with the hard labor.", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "I'm being punished by that old inky hag.  So what if I scorched her precious robe!  She's a horrible teacher!")
end


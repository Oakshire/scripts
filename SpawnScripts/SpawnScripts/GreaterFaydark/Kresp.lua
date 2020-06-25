--[[
	Script Name	: SpawnScripts/GreaterFaydark/Kresp.lua
	Script Purpose	: Kresp 
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

		PlayFlavor(NPC, "kresp/_exp03/exp03_rgn_greater_faydark/kresp/kresp_001.mp3", "", "", 3832374147, 290832441, Spawn)
	AddConversationOption(conversation, "Sure I will help you.", "dlg_18_1")
	AddConversationOption(conversation, "Sounds gross.")
	StartConversation(conversation, NPC, Spawn, "I am Kresp the collector of things, many things, but not normal things people collect. I collect ears. Yes ears, they sell well if you know who to sell them to. So do you feel like doing some business with Kresp?")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "kresp/_exp03/exp03_rgn_greater_faydark/kresp/kresp_002.mp3", "", "", 4281501181, 3879995677, Spawn)
	AddConversationOption(conversation, "No problem.", "dlg_18_2")
	StartConversation(conversation, NPC, Spawn, "Bring Kresp twenty ears of the orcs they are slimy sometimes so make sure to not get slime off of ear.")
end


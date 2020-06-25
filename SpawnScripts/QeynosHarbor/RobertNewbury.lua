--[[
	Script Name	: SpawnScripts/QeynosHarbor/RobertNewbury.lua
	Script Purpose	: Robert Newbury <Banker>
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

		PlayFlavor(NPC, "voiceover/english/banker_robert_newbury/qey_harbor/bankerrobertnewbury.mp3", "", "", 1059198737, 1183516549, Spawn)
		AddConversationOption(conversation, "I'll keep that in mind in the future.", "dlg_26_1")
	StartConversation(conversation, NPC, Spawn, "I'll take care of your coin and goods if they need safekeeping.")
end

function dlg_26_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/banker_robert_newbury/qey_harbor/bankerrobertnewbury.mp3", "", "", 1059198737, 1183516549, Spawn)
		AddConversationOption(conversation, "I'll keep that in mind in the future.", "dlg_26_2")
	StartConversation(conversation, NPC, Spawn, "I'll take care of your coin and goods if they need safekeeping.")
end


--[[
	Script Name	: SpawnScripts/QeynosHarbor/GrisvaneStonearm.lua
	Script Purpose	: Grisvane Stonearm <Banker>
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

		PlayFlavor(NPC, "voiceover/english/banker_grisvane_stonearm/qey_harbor/bankergrisvanestonearm.mp3", "", "", 2372742156, 2861930894, Spawn)
		AddConversationOption(conversation, "Thanks, that's good to know.", "dlg_27_1")
	StartConversation(conversation, NPC, Spawn, "Hello there.  I'll take care of your coin and goods if they need safekeeping.")
end


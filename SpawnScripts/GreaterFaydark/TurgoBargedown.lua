--[[
	Script Name	: SpawnScripts/GreaterFaydark/TurgoBargedown.lua
	Script Purpose	: Turgo Bargedown <Liberation Squad>
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

		PlayFlavor(NPC, "turgo_bargedown/_exp03/exp03_rgn_greater_faydark/turgo_bargedown/turgo_bargedown001.mp3", "", "", 1152177657, 3698837613, Spawn)
	AddConversationOption(conversation, "Good luck against the orcs.", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "Nobody but NOBODY holds a son or daughter of Kaladim hostage! We'll be splittin' some orc heads to get our kinsmen back home.")
end


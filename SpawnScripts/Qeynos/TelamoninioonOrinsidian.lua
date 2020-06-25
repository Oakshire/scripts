--[[
	Script Name	: SpawnScripts/SouthQeynos/TelamoninioonOrinsidian.lua
	Script Purpose	: Telamoninioon Orinsidian <Illusionist Trainer>
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

		PlayFlavor(NPC, "telamoninioon_orinsidian/qey_south/trainer_illusionist001.mp3", "", "", 2186208866, 2652065354, Spawn)
		AddConversationOption(conversation, "Just looking around.", "dlg_14_1")
	StartConversation(conversation, NPC, Spawn, "Good day Ravelshian, what brings you to the Concordium?")
end


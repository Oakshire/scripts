--[[
	Script Name	: SpawnScripts/SouthQeynos/FelionShadoweater.lua
	Script Purpose	: Felion Shadoweater <Warlock Trainer>
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

		PlayFlavor(NPC, "felion_shadoweater/qey_south/trainer_warlock001.mp3", "", "", 1176643963, 312303981, Spawn)
		AddConversationOption(conversation, "Just looking around.", "dlg_12_1")
	StartConversation(conversation, NPC, Spawn, "Greetings Ravelshian, what brings you to the Concordium?")
end


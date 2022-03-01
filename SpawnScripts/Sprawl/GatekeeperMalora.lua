--[[
	Script Name	: SpawnScripts/Sprawl/GatekeeperMalora.lua
	Script Purpose	: Gatekeeper Malora <Freeport Militia>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gatekeeper_malora/fprt_adv03_sprawl/quests/protector_malora004.mp3", "", "", 1115741315, 3103270743, Spawn)
	AddConversationOption(conversation, "Be well, Malora.", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "It is my duty to ensure the safety of less-experienced adventurers. Someone of your skill need not worry about traveling beyond this gate.")
end


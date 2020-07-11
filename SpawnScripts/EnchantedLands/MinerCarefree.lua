--[[
	Script Name	: SpawnScripts/EnchantedLands/MinerCarefree.lua
	Script Purpose	: Miner Carefree 
	Script Author	: Cynnar
	Script Date	: 2015.02.24
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

		PlayFlavor(NPC, "voiceover/english/miner_carefree/enchanted/miner_carefree/miner_carefree002.mp3", "", "", 1687720258, 1783617437, Spawn)
		AddConversationOption(conversation, "Ok.", "dlg_6_1")
	StartConversation(conversation, NPC, Spawn, "Huh?  What?  Don't bother me... I'm on a break.")
end


--[[
	Script Name	: SpawnScripts/EnchantedLands/MinerMudfoot.lua
	Script Purpose	: Miner Mudfoot 
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

		PlayFlavor(NPC, "voiceover/english/miner_mudfoot/enchanted/miner_mudfoot/miner_mudfoot002.mp3", "", "", 2512667084, 1549287373, Spawn)
		AddConversationOption(conversation, "Bye.", "dlg_7_1")
	StartConversation(conversation, NPC, Spawn, "Yeah it's hard work... something about this here earth... almost like it don't want to be dug.  Huh?  I say we listen.")
end


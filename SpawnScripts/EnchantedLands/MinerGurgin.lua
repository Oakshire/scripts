--[[
	Script Name	: SpawnScripts/EnchantedLands/MinerGurgin.lua
	Script Purpose	: Miner Gurgin 
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

		PlayFlavor(NPC, "voiceover/english/miner_gurgin/enchanted/miner_gurgin/miner_gurgin001.mp3", "", "", 675328757, 614757128, Spawn)
		AddConversationOption(conversation, "Here you go, then.", "dlg_5_1")
	StartConversation(conversation, NPC, Spawn, "What is it, eh?  What have you got there?  Are them our supplies?  Fantastic!  What with the density of the rock increasing and these vile beasts blocking our exit, I wasn't sure what we were going to do.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/miner_gurgin/enchanted/miner_gurgin/miner_gurgin002.mp3", "", "", 1561858323, 3223241483, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "Hah! This will work just fine.  Take this message to Seher and let her know we'll continue working this section, or at least until these beasts move on.  Say!  I found these.  Why don't you take them for bringing us our supplies? ")
end


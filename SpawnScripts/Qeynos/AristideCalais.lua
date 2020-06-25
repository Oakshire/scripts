--[[
	Script Name	: SpawnScripts/SouthQeynos/AristideCalais.lua
	Script Purpose	: Aristide Calais 
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

		PlayFlavor(NPC, "voiceover/english/aristide_calais/qey_south/aristidecalais001.mp3", "", "", 3711938676, 52229520, Spawn)
		AddConversationOption(conversation, "Oh, excuse me. ", "dlg_24_1")
	StartConversation(conversation, NPC, Spawn, "Hello, adventurer.  Please mind the books and pages spread about.  I'm in the middle of researching methods of enchanting stones with magical properties and it wouldn't do to have foot prints and smudges on the documents.")
end


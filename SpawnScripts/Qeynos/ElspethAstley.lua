--[[
	Script Name	: SpawnScripts/SouthQeynos/ElspethAstley.lua
	Script Purpose	: Elspeth Astley 
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

		PlayFlavor(NPC, "voiceover/english/elspeth_astley/qey_south/elspethastley000.mp3", "", "", 280090355, 624466296, Spawn)
		AddConversationOption(conversation, "Thanks for the information. ", "dlg_8_1")
	StartConversation(conversation, NPC, Spawn, "The winds of time change many things.  One thing remains the same, the might of the sorcerer.")
end


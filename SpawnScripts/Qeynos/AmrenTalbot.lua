--[[
	Script Name	: SpawnScripts/SouthQeynos/AmrenTalbot.lua
	Script Purpose	: Amren Talbot 
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

		PlayFlavor(NPC, "voiceover/english/amren_talbot/qey_south/amrentalbot000.mp3", "", "", 186833269, 2706325328, Spawn)
		AddConversationOption(conversation, "I'm not one for thinking about illusions. ", "dlg_7_1")
	StartConversation(conversation, NPC, Spawn, "Focus is the key to unlocking any illusion.  The mind's eye can do many wondrous things, once it focuses.")
end


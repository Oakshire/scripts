--[[
	Script Name	: SpawnScripts/Oakmyst/TrackerKelnis.lua
	Script Purpose	: Tracker Kelnis 
	Script Author	: scatman
	Script Date	: 2009.05.08
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

	PlayFlavor(NPC, "voiceover/english/tracker_kelnis/qey_adv01_oakmyst/trackerkelnis000.mp3", "", "", 2160349950, 3920623086, Spawn)
	AddConversationOption(conversation, "I shall watch my steps within these woods.")
	StartConversation(conversation, NPC, Spawn, "Enter the forest with caution, traveler!  You never know what dangers lurk in the Oakmyst. ")
end
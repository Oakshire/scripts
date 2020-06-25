--[[
	Script Name	: SpawnScripts/SouthQeynos/PupilAdeptWazzlefop.lua
	Script Purpose	: Pupil Adept Wazzlefop <Concordium Mage>
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

		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Followers of the Fang", "dlg_5_1")
		AddConversationOption(conversation, "I would like the writ: Darkpaw Encroachment")
		AddConversationOption(conversation, "I will be going.")
	StartConversation(conversation, NPC, Spawn, "...")
	if convo==6 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Followers of the Fang", "dlg_6_1")
		AddConversationOption(conversation, "I would like the writ: Darkpaw Encroachment")
		AddConversationOption(conversation, "I will be going.")
		StartConversation(conversation, NPC, Spawn, "...")
	end

end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/pupil_adept_wazzlefop/qey_south/100_soc_gnome_concordium_wazzlefop_greeting_fd45f78a.mp3", "", "", 4189930656, 304987589, Spawn)
		AddConversationOption(conversation, "Okay.", "dlg_6_2")
	StartConversation(conversation, NPC, Spawn, "Are you a seeker of the arcane?  Do you thirst for the knowledge of the mystical?  You've come to the right place.  Here at the Concordium, we serve the queen by using our mystical prowess to aid those in need.  Take this writ and help us in our search for truth.")
end


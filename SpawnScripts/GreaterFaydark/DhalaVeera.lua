--[[
	Script Name	: SpawnScripts/GreaterFaydark/DhalaVeera.lua
	Script Purpose	: Dhala Veera 
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/dhala_veera/_exp03/exp03_rgn_greater_faydark/quest/scp/dhala_veera_notonquest_80efa18a.mp3", "Welcome, friend.", "", 879274723, 3802246177, Spawn)
end


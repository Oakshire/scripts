--[[
	Script Name	: SpawnScripts/SouthQeynos/LibrarianDalmas.lua
	Script Purpose	: Librarian Dalmas 
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

	PlayFlavor(NPC, "voiceover/english/librarian_dalmas/qey_south/100_librarian_dalmas_callout1_1f4ad2b6.mp3", "Please be quiet when inside this place.", "", 1796148235, 1918712162, Spawn)
end


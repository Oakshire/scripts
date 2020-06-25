--[[
	Script Name	: SpawnScripts/SouthQeynos/AestheticWinchester.lua
	Script Purpose	: Aesthetic Winchester <Concordium Mage>
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

	PlayFlavor(NPC, "voiceover/english/aesthetic_winchester/qey_south/100_soc_human_concordium_officer_winchester_no_95fee05b.mp3", "Hail to you, fair citizen.  May your day be filled with discovery!", "", 2831469311, 1508414831, Spawn)
end


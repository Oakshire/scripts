--[[
	Script Name	: SpawnScripts/SouthQeynos/Barr.lua
	Script Purpose	: Barr <Guard>
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

	PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gf_ee473c11.mp3", "Good day to you citizen, all preserve Queen Antonia.", "salute", 3457944783, 4136040635, Spawn)
end


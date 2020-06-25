--[[
	Script Name	: SpawnScripts/SouthQeynos/Hegrenn.lua
	Script Purpose	: Hegrenn <Bowyer>
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

	PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/weaponsmith/dwarf_weaponsmith_service_good_1_hail_gf_37dbcab8.mp3", "Welcome to my humble shop.  We have quite a selection of weapons to choose from.  See for yourself...", "salute", 1421312819, 2420395206, Spawn)
end


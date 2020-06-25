--[[
	Script Name	: SpawnScripts/SouthQeynos/Gavinfell.lua
	Script Purpose	: Gavinfell <Guard>
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

	PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/guard/barbarian_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 2268064933, 2349331472, Spawn)
end


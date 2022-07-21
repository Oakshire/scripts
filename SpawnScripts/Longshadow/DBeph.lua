--[[
	Script Name		: SpawnScripts/LongshadowAlley/DBeph.lua
	Script Purpose	: D`Beph
	Script Author	: torsten
	Script Date		: 2022.07.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gm_7fa14d4.mp3", "Do not challenge my authority citizen.  In Freeport, the Overlord's word is law!", "scold", 3071777755, 1811086423, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gm_edb196f8.mp3", "All praises to the Overlord.  The Militia protects loyal citizens of Freeport.", "salute_freeport", 3432620709, 3039361332, Spawn, 0)
	end
end
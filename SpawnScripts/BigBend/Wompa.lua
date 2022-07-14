--[[
	Script Name		: SpawnScripts/BigBend/Wompa.lua
	Script Purpose	: Wompa
	Script Author	: torsten
	Script Date		: 2022.07.13
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
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/guard/ogre_guard_service_evil_1_hail_gf_7fa14d4.mp3", "Do not challenge my authority citizen.  In Freeport, the Overlord's word is law!", "scold", 2981239011, 830472688, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/guard/ogre_guard_service_evil_1_hail_gf_e6d19328.mp3", "The Overlord commands me to work the night shift and so I must accept.", "tapfoot", 3190713491, 83008289, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/guard/ogre_guard_service_evil_1_hail_gf_edb196f8.mp3", "All praises to the Overlord.  The Militia protects loyal citizens of Freeport.", "salute_freeport", 2650311659, 1056157406, Spawn, 0)
	end
end
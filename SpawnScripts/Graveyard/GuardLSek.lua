--[[
	Script Name	: SpawnScripts/Graveyard/GuardLSek.lua
	Script Purpose	: Guard L'Sek <Guard>
	Script Author	: Scatman
	Script Date	: 2009.07.25
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gm_edb196f8.mp3", "All praises to the Overlord.  The Militia protects loyal citizens of Freeport.", "salute_freeport", 3432620709, 3039361332, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gm_870ae3cb.mp3", "The Overlord commands me to patrol this area, and so I must.", "tapfoot", 3455786340, 1963116786, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gm_582205e1.mp3", "Do you have business with the Freeport Militia?", "glare", 3330899926, 205777100, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gm_7fa14d4.mp3", "Do not challenge my authority citizen. In Freeport, the Overlord's word is law!", "scold", 3071777755, 1811086423, Spawn)
	end
end
--[[
	Script Name	: SpawnScripts/TheSprawl/Talamudius.lua
	Script Purpose	: Talamudius <Guard>
	Script Author	: Scatman
	Script Date	: 2009.07.26
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_582205e1.mp3", "Do you have business with the Freeport Militia?", "glare", 3265760930, 1055342916, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_7fa14d4.mp3", "Do not challenge my authority citizen. In Freeport, the Overlord's word is law!", "scold", 1744928325, 2718395831, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_870ae3cb.mp3", "The Overlord commands me to patrol this area, and so I must.", "tapfoot", 1281050619, 1758539799, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_edb196f8.mp3", "All praises to the Overlord. The Militia protects loyal citizens of Freeport.", "salute_freeport", 1906726944, 247472694, Spawn)
	end
end

function respawn(NPC)
	spawn(NPC)
end
--[[
	Script Name	: SpawnScripts/ScaleYard/Ithias.lua
	Script Purpose	: Ithias <Guard>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/guard/halfelf_guard_service_evil_1_hail_gm_edb196f8.mp3", "All praises to the Overlord.  The Militia protects loyal citizens of Freeport.", "salute_freeport", 2179538941, 3128154335, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/guard/halfelf_guard_service_evil_1_hail_gm_870ae3cb.mp3", "The Overlord commands me to patrol this area, and so I must.", "tapfoot", 1380232703, 3690439064, Spawn)
	end

end


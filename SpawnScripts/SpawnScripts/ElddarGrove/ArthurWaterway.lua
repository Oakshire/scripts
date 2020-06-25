--[[
	Script Name	: SpawnScripts/ElddarGrove/ArthurWaterway.lua
	Script Purpose	: Arthur Waterway 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_768a0c8b.mp3", "Everywhere is walking distance if you have the time.", "wink", 2228417017, 3880753774, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_ea435b69.mp3", "I'm going to get some piercings so I can be unique like everyone else.", "yeah", 2468101640, 903029053, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_666e9477.mp3", "I think the word dual-breed has a little more dignity than half-elf, don't you?", "ponder", 3563191265, 3563670932, Spawn)
	else
	end

end


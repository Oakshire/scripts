--[[
	Script Name	: SpawnScripts/ElddarGrove/Junala.lua
	Script Purpose	: Junala 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_28445ab7.mp3", "I don't spend as much time grooming as the others say I do.", "sulk", 2675025847, 2696760246, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_6c9e41c6.mp3", "Don't think that I'm silly, I just happen to like the simple little things.", "flustered", 1426227770, 2304966225, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_63881722.mp3", "I'm trying to find a new seasoning for my dried fish.", "ponder", 3802648946, 1171453079, Spawn)
	else
	end

end


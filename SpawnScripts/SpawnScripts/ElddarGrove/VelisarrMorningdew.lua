--[[
	Script Name	: SpawnScripts/ElddarGrove/VelisarrMorningdew.lua
	Script Purpose	: Velisarr Morningdew 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_1f61925a.mp3", "Are my roots showing?  I think I'll go for a light blueberry mixed with jum-jum highlights.", "ponder", 4153154191, 497875539, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_62804932.mp3", "I'm only happy when it rains.  Well.. I like sunny days too.  Okay... I'm actually happy all the time.", "confused", 1094375942, 2257836955, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_4a0665a0.mp3", "I'm so depressed!  I had to work all day!", "sad", 3176397311, 2616932103, Spawn)
	else
	end

end


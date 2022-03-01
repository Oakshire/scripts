--[[
	Script Name	: SpawnScripts/ElddarGrove/DelmaMesspie.lua
	Script Purpose	: Delma Messpie 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_6594953c.mp3", "If a thing isn't worth saying, you sing it.", "wink", 1056697572, 3706271932, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_5b6e8d2f.mp3", "Do you like muffins?  Muffins are my favorite, I eat them every chance I get.", "sigh", 4155434475, 829232573, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_3dc6b124.mp3", "Get the wash, get the wash.  This whole city would fall apart if I didn't deliver the clothes on time.  ", "frustrated", 4277096439, 928366048, Spawn)
	else
	end

end


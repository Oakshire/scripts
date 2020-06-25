--[[
	Script Name	: SpawnScripts/ElddarGrove/ThomasBoatmend.lua
	Script Purpose	: Thomas Boatmend 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "", 1620470786, 1752689340, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_2fa5fd3b.mp3", "We'll have to get together for a goblet of wine sometime soon.  Your treat.", "", 2999782150, 334868042, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_876eb977.mp3", "I wish I had \"good old days\" to remember, like you do.  Ah, well.  Best to worry about today and not yesterday.", "", 918037021, 185336532, Spawn)
	else
	end

end


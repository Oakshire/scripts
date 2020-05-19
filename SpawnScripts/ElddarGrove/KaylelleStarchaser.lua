--[[
	Script Name	: SpawnScripts/ElddarGrove/KaylelleStarchaser.lua
	Script Purpose	: Kaylelle Starchaser 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gf_1f97d15c.mp3", "May your life be filled with the green of trees and your heart be filled with ...hope.", "", 1410070569, 2067586254, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gf_c91da8a3.mp3", "I have nothing to say to you right now.", "shrug", 2086714174, 1576219530, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gf_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "", 3457658686, 921014902, Spawn)
	else
	end

end


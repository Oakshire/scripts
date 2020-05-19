--[[
	Script Name	: SpawnScripts/ElddarGrove/TairielOakshade.lua
	Script Purpose	: Tairiel Oakshade 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_tunarianalliance/ft/eco/good/human_eco_good_tunarianalliance_hail_gm_2c2d0ef6.mp3", "The Tunarian Alliance preserves our memories of the breathing trees and singing streams of Jaggedpine.", "", 1912930054, 3530428976, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_tunarianalliance/ft/eco/good/human_eco_good_tunarianalliance_hail_gm_1bda6347.mp3", "The destructive methods of the Qeynos Guard will ravage that which it seeks to defend.", "", 421213855, 4168573173, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_tunarianalliance/ft/eco/good/human_eco_good_tunarianalliance_hail_gm_24723d84.mp3", "While the land suffers and cries out for immediate protection the Celestial Watch is content to look to myths and superstitions for our salvation.", "", 1704735533, 1025969438, Spawn)
	else
	end

end


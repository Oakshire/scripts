--[[
    Script Name    : SpawnScripts/NorthQeynos/GrettaSteinbeard.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.01 01:04:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
				        PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_7e3f7ca.mp3", "How did you get past the city gates?!", "shakefist", 3013505918,3175061897)
	
end

function respawn(NPC)
	spawn(NPC)
end
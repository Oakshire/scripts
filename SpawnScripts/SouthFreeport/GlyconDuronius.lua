--[[
    Script Name    : SpawnScripts/SouthFreeport/GlyconDuronius.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.21 11:03:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	                   	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_d2844e25.mp3", "Does anyone in this city bathe?", "stinky", 1255908565, 2073931972, Spawn)
	
end

function respawn(NPC)
	spawn(NPC)
end
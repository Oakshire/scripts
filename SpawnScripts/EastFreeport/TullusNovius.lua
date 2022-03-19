--[[
    Script Name    : SpawnScripts/EastFreeport/TullusNovius.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.16 09:03:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gf_a96fdda8.mp3", "If I found the smallest piece of magical residue in the world and cut it in half, I wonder what would happen?", "scheme", 419040585, 4060599636, Spawn)

end

function respawn(NPC)
	spawn(NPC)
end
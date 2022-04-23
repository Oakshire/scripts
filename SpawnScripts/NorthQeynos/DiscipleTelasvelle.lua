--[[
    Script Name    : SpawnScripts/NorthQeynos/DiscipleTelasvelle.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.23 03:04:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/disciple_telas_velle/qey_north/100_soc_highelf_celestial_telasvelle_no_729fd853.mp3", "Only through eternal vigilance can we find inner peace.", "", 385371001, 4238824653, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end
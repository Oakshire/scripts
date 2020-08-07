--[[
    Script Name    : SpawnScripts/Freeport/TulliaDomna.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.06 08:08:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/tullia_domna/fprt_hood04/100_std_tullia_domna_hum_f_callout1_77869ddd.mp3", "Come hither... how can I, Queen Antonia Bayle, serve you?", "",  3532309135, 780107631, Spawn)
end

function respawn(NPC)

end


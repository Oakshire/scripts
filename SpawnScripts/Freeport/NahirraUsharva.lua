--[[
    Script Name    : SpawnScripts/Freeport/NahirraUsharva.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.16 05:07:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_dismalrage/ft/eco/evil/darkelf_female_eco_evil_dismalrage_10_gf_1a36b724.mp3", "You must learn to release the chaos and destruction of your power.", "", 1739074440, 1700879521, Spawn)
end

function respawn(NPC)

end


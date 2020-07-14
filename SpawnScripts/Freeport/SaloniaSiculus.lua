--[[
    Script Name    : SpawnScripts/Freeport/SaloniaSiculus.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 07:07:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/banker/human_banker_service_evil_1_hail_gf_d245cb35.mp3", "Ouch, that's your balance?", "wince", 337629548, 2251073798, Spawn)
end

function respawn(NPC)

end


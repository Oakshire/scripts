--[[
    Script Name    : SpawnScripts/Freeport/DucciusAgorix.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 10:07:39
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 4)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_edb196f8.mp3", "All praises to the Overlord.  The Militia protects loyal citizens of Freeport.", "salute_freeport", 1906726944, 247472694, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_7fa14d4.mp3", "Do not challenge my authority, citizen.  In Freeport, the Overlord's word is law!", "scold", 1744928325, 2718395831, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_582205e1.mp3", "Do you have business with the Freeport Militia?", "glare", 3265760930, 1055342916, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_870ae3cb.mp3", "The Overlord commands me to patrol this area, and so I must.", "tapfoot", 1281050619, 1758539799, Spawn)
   end
end

function respawn(NPC)

end


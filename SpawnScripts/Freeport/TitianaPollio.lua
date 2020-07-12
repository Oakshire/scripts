--[[
    Script Name    : SpawnScripts/Freeport/TitianaPollio.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 09:07:20
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 4)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gf_582205e1.mp3", "Do you have business with the Freeport Militia?", "glare", 2697294413, 370291658, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gf_7fa14d4.mp3", "Do not challenge my authority, citizen.  In Freeport, the Overlord's word is law!", "scold", 1888277290, 873721758, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gf_edb196f8.mp3", "All praises to the Overlord.  The Militia protects loyal citizens of Freeport.", "salute_freeport", 1662524531, 242648132, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gf_e6d19328.mp3", "The Overlord commands me to work the night shift and so I must accept.", "tapfoot", 3462302836, 3625333695, Spawn)
    end
end

function respawn(NPC)

end


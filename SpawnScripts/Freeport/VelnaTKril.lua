--[[
    Script Name    : SpawnScripts/Freeport/VelnaTKril.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 07:07:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 4)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gf_582205e1.mp3", "Do you have business with the Freeport Militia?", "glare", 2007336774, 276021764, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gf_edb196f8.mp3", "All praises to the Overlord.  The Militia protects loyal citizens of Freeport.", "salute_freeport", 1432151232, 2291117299, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gf_e6d19328.mp3", "The Overlord commands me to work the night shift and so I must accept.", "tapfoot", 1941665390, 4180571964, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gf_7fa14d4.mp3", "Do not challenge my authority, citizen.  In Freeport, the Overlord's word is law!", "scold", 2216401374, 2200952527, Spawn)
end
   end

function respawn(NPC)

end


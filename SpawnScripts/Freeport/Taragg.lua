--[[
    Script Name    : SpawnScripts/Freeport/Taragg.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 09:07:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/guard/ogre_guard_service_evil_1_hail_gm_582205e1.mp3", "Do you have business with the Freeport Militia?", "glare", 423300132, 829337329, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/guard/ogre_guard_service_evil_1_hail_gm_edb196f8.mp3", "All praises to the Overlord.  The Militia protects loyal citizens of Freeport.", "salute_freeport", 2290537918, 776957565, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/guard/ogre_guard_service_evil_1_hail_gm_870ae3cb.mp3", "The Overlord commands me to patrol this area, and so I must.", "tapfoot", 3898592844, 3023882159, Spawn)
   end
end

function respawn(NPC)

end


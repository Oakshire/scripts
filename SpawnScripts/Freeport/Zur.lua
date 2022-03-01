--[[
    Script Name    : SpawnScripts/Freeport/Zur.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.16 06:07:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn) 
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gf_d088c20d.mp3", "The stuff's over there.  Just let me know if you find anything you like.", "ponder", 1457896156, 727813168, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 3860282907, 2830883681, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 1486780566, 1792397389, Spawn)
    end
end

function respawn(NPC)

end


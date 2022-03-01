--[[
    Script Name    : SpawnScripts/Freeport/KarilaTzel.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.22 08:07:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 2)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/service/merchant/darkelf_merchant_service_evil_2_hail_gf_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 886410803, 3357937024, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/service/merchant/darkelf_merchant_service_evil_2_hail_gf_d088c20d.mp3", "The stuff's over there.  Just let me know if you find anything you like.", "ponder", 3437964024, 2518125905, Spawn)
end
   end

function respawn(NPC)

end


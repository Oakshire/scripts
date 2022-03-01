--[[
    Script Name    : SpawnScripts/Freeport/ShirzztBonelasher.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 06:08:27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 4)
    if choice == 1 then
    PlayFlavor(NPC, "", "Mmmm...tasty...", "", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/service/merchant/troll_merchant_service_evil_2_hail_gf_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 1335466174, 672398346, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/service/merchant/troll_merchant_service_evil_2_hail_gf_d088c20d.mp3", "The stuff's over there.  Just let me know if you find anything you like.", "ponder", 1139316257, 3885612978, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/service/merchant/troll_merchant_service_evil_2_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 1199893528, 955414076, Spawn)
   end
end

function respawn(NPC)

end


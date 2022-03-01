--[[
    Script Name    : SpawnScripts/Freeport/Gorga.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 06:08:44
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_1/ft/service/merchant/ogre_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 1831712971, 1100241470, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_1/ft/service/merchant/ogre_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 2869440792, 4241979369, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_1/ft/service/merchant/ogre_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 336682108, 2623574882, Spawn)
    end 
end

function respawn(NPC)

end


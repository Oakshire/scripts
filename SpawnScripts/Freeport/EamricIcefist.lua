--[[
    Script Name    : SpawnScripts/Freeport/EamricIcefist.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 06:08:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 5)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/service/merchant/barbarian_merchant_service_evil_2_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 1175877866, 3405635165, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/service/merchant/barbarian_merchant_service_evil_2_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 1385543830, 1478025098, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/service/merchant/barbarian_merchant_service_evil_2_hail_gm_f9745f1c.mp3", "Hello, can I offer you one of our new lifetime extended warranties for any merchandise you purchase?", "nod", 1878964126, 1075081009, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/service/merchant/barbarian_merchant_service_evil_2_hail_gm_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 4083683158, 113009629, Spawn)
    else
    PlayFlavor(NPC, "", "What do you want?", "glare", 1689589577, 4560189, Spawn)
end
    end

function respawn(NPC)

end


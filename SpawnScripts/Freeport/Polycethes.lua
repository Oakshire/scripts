--[[
    Script Name    : SpawnScripts/Freeport/Polycethes.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 08:07:27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 2)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 3397939934, 3975525417, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 3214856518, 2753581081, Spawn)
end
   end

function respawn(NPC)

end


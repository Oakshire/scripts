--[[
    Script Name    : SpawnScripts/Freeport/Exmarch.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 11:07:44
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 6)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/halfelf_eco_farsea_1/ft/service/merchant/halfelf_merchant_service_farsea_1_hail_gm_91319338.mp3", "Smartly there, bucko, afore the sun sets.", "shakefist", 422002667, 3900718393, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/halfelf_eco_farsea_1/ft/service/merchant/halfelf_merchant_service_farsea_1_hail_gm_b9b19d1d.mp3", "Lets me knows if'n ye sight a shark with a timber stuck a'tween his teeth.", "wink", 802487084, 1336291105, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/halfelf_eco_farsea_1/ft/service/merchant/halfelf_merchant_service_farsea_1_hail_gm_221d5041.mp3", "Get all the cures 'ere fer yer fevers and scurvy.", "beckon", 2927017873, 1769335255, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/halfelf_eco_farsea_1/ft/service/merchant/halfelf_merchant_service_farsea_1_hail_gm_6c37dc5e.mp3", "Ye'll find the finest grub and grog 'ere, Cap'n.", "hello", 235486577, 2236876414, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "voiceover/english/halfelf_eco_farsea_1/ft/service/merchant/halfelf_merchant_service_farsea_1_hail_gm_472ca0ad.mp3", "Yo-ho-ho! Now there be some booty that'll fetch more'n a piece o' eight.", "smile", 3944582155, 645979430, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/halfelf_eco_farsea_1/ft/service/merchant/halfelf_merchant_service_farsea_1_hail_gm_bd794e47.mp3", "Ye starin' at me glass eye, ye poxy tar?", "stare", 3483682855, 570647172, Spawn)
end
   end

function respawn(NPC)

end


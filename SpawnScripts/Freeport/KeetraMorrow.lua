--[[
    Script Name    : SpawnScripts/Freeport/KeetraMorrow.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 02:07:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 7)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional5/kerran_eco_neutral_2/ft/service/merchant/kerran_merchant_service_neutral_2_hail_gf_670060d5.mp3", "Calm down, friend. Just because this looks like your stolen backpack doesn't mean it is.", "boggle", 2037125351, 2488592551, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional5/kerran_eco_neutral_2/ft/service/merchant/kerran_merchant_service_neutral_2_hail_gf_29327bd1.mp3", "I have to dump this stuff and move out tonight. Staying one step ahead of my, uh, happy customers.", "lookaway", 975208121, 4129019150, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional5/kerran_eco_neutral_2/ft/service/merchant/kerran_merchant_service_neutral_2_hail_gf_589bbb80.mp3", "Satisfaction is guaranteed, with all items fully refundable...if you can find me again.", "thumbsup", 1416046605, 1980489196, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional5/kerran_eco_neutral_2/ft/service/merchant/kerran_merchant_service_neutral_2_hail_gf_8c371df0.mp3", "Don't let these deals slip through your fingers.", "point", 3644572506, 1178738876, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "voiceover/english/optional5/kerran_eco_neutral_2/ft/service/merchant/kerran_merchant_service_neutral_2_hail_gf_f2a55e76.mp3", "With these values it's like you're the one committing highway robbery!", "smile", 1546268499, 867906889, Spawn)
    elseif choice == 6 then
    PlayFlavor(NPC, "voiceover/english/optional5/kerran_eco_neutral_2/ft/service/merchant/kerran_merchant_service_neutral_2_hail_gf_1e754634.mp3", "Of course we deliver! I'll just need an address, key, and the times when you won't be home.", "scheme", 931400742, 1667556613, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/optional5/kerran_eco_neutral_2/ft/service/merchant/kerran_merchant_service_neutral_2_hail_gf_e4bce3ad.mp3", "Psst ... I'm cutting you in on the deal of a lifetime.", "agree", 1668699586, 882754848, Spawn)
end
   end
    
  

function respawn(NPC)

end


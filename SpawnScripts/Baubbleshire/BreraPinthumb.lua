--[[
    Script Name    : SpawnScripts/Baubbleshire/BreraPinthumb.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.19 04:02:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	local choice = math.random(1,5)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/mender/gnome_mender_service_good_1_hail_gf_4bd3613e.mp3", "Hello adventurer. Looking to get some armor repaired after a long day of dragon slaying?", "hello", 2297160794, 2827270802, Spawn)
    
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/mender/gnome_mender_service_good_1_hail_gf_807f8e9e.mp3", "Greetings there. Have something that you think needs a bit of repair?", "hello", 3254526374, 3000877287, Spawn)
    
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/mender/gnome_mender_service_good_1_hail_gf_ad53c5ff.mp3", "Welcome. Is there anything I can help you with? Or, are you looking to find an apprenticeship?", "thanks", 1352139907, 2612434311, Spawn)
        
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/mender/gnome_mender_service_good_1_hail_gf_f30bd542.mp3", "Hello there, my fine adventurer. Just give me that armor right quick and I'll hammer it up as good as new.", "hello", 2903463757, 3540048396, Spawn)
   
   else
    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/mender/gnome_mender_service_good_1_aoi_gf_cc49be54.mp3", "Don't go into battle with your weapons and armor worn to the nub! Come inside and we'll fix them up for you.", "no", 3419739170, 596843062, Spawn)
  
    end

end

function respawn(NPC)
	spawn(NPC)
end
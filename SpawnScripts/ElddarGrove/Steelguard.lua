--[[
    Script Name    : SpawnScripts/ElddarGrove/Steelguard.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.02 12:05:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	local choice = math.random(1,4)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/mender/dwarf_mender_service_good_1_hail_gm_4bd3613e.mp3", "Hello adventurer. Looking to get some armor repaired after a long day of dragon slaying?", "hello", 3720664767, 2717003772, Spawn)
    
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/mender/dwarf_mender_service_good_1_hail_gm_807f8e9e.mp3", "Greetings there. Have something that you think needs a bit of repair?", "hello", 2320956525, 1023413174, Spawn)
    
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/mender/dwarf_mender_service_good_1_hail_gm_ad53c5ff.mp3", "Welcome. Is there anything I can help you with? Or, are you looking to find an apprenticeship?", "thanks", 3165096467, 475823425, Spawn)
        
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/mender/dwarf_mender_service_good_1_hail_gm_f30bd542.mp3", "Hello there, my fine adventurer. Just give me that armor right quick and I'll hammer it up as good as new.", "hello", 646209294, 3326794100, Spawn)
    end

end
function respawn(NPC)
	spawn(NPC)
end
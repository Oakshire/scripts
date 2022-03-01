--[[
    Script Name    : SpawnScripts/Castleview/LynneElia.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.18 10:02:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1,4)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/mender/highelf_mender_service_good_1_hail_gf_4bd3613e.mp3", "Hello adventurer. Looking to get some armor repaired after a long day of dragon slaying?", "hello", 2307710782, 1646610846, Spawn)
    
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/mender/highelf_mender_service_good_1_hail_gf_807f8e9e.mp3", "Greetings there. Have something that you think needs a bit of repair?", "hello", 1966309965, 578962789, Spawn)
    
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/mender/highelf_mender_service_good_1_hail_gf_ad53c5ff.mp3", "Welcome. Is there anything I can help you with? Or, are you looking to find an apprenticeship?", "thanks", 250723816, 440880633, Spawn)
        
    else
    PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/mender/highelf_mender_service_good_1_hail_gf_f30bd542.mp3", "Hello there, my fine adventurer. Just give me that armor right quick and I'll hammer it up as good as new.", "hello", 3837756721, 329116360, Spawn)
    end
end

function respawn(NPC)
	spawn(NPC)
end
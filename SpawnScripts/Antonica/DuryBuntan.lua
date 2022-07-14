--[[
    Script Name    : SpawnScripts/Antonica/DuryBuntan.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.13 06:07:44
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_1/ft/service/mender/human_mender_service_good_1_hail_gm_4bd3613e.mp3", "Hello, adventurer.  Looking to get some items repaired after a hard day of dragon slaying?", "wink", 380627654, 2633313989, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_1/ft/service/mender/human_mender_service_good_1_hail_gm_53bda798.mp3", "Hello there, my fine adventurer.  Just give me that armor right quick and I'll hammer it up good as new!", "smile", 3765628057, 1447476358, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_1/ft/service/mender/human_mender_service_good_1_hail_gm_ad53c5ff.mp3", "Welcome! Is there anything I can help you with or are you looking to find an apprenticeship?", "shrug", 3954040115, 2167879426, Spawn, 0)
	end
end

function respawn(NPC)
	spawn(NPC)
end
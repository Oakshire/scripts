--[[
    Script Name    : SpawnScripts/Commonwealth/GomKusuba.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.25 01:10:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_aoi_gm_c5e79ff5.mp3", "Hello there!  Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 668610071, 953653133, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 1405292242, 1170257111, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 2438244582, 4033825140, Spawn, 0)
	end
end
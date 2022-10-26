--[[
    Script Name    : SpawnScripts/Commonwealth/WholesalerBaldmaerDuneof.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.25 01:10:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
     FaceTarget(NPC, Spawn)

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/housing/human_housing_service_good_1_aoi_gm_1fa85d79.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wave", 903813734, 2512856176, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 2541554579, 2951095822, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 892528408, 239693863, Spawn)
	end
end

function respawn(NPC)
	spawn(NPC)
end
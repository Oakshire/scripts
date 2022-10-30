--[[
    Script Name    : SpawnScripts/Truthbringer/Clover.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.29 06:10:51
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
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/highelf_eco_good_2/ft/service/merchant/highelf_merchant_service_good_2_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 3115564539, 34309187, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/highelf_eco_good_2/ft/service/merchant/highelf_merchant_service_good_2_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 3320524559, 934439, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/highelf_eco_good_2/ft/service/merchant/highelf_merchant_service_good_2_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 317075532, 2872017227, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/highelf_eco_good_2/ft/service/merchant/highelf_merchant_service_good_2_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 2720116612, 4014358874, Spawn, 0)
	end
end
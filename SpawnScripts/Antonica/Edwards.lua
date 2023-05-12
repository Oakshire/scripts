--[[
    Script Name    : SpawnScripts/Antonica/Edwards.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.27 05:06:58
    Script Purpose : 
                   : 
--]]


function spawn(NPC)

end

function hailed(NPC, Spawn)
	local choice = MakeRandomInt(1,2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 2588954321, 88153469, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 1667555721, 2696093362, Spawn)
	end
   end

function respawn(NPC)
	spawn(NPC)
end
--[[
	Script Name	: SpawnScripts/Starcrest/Harstead.lua
	Script Purpose	: Harstead <Shieldsmith>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 2588954321, 88153469, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 1667555721, 2696093362, Spawn)
	end

end
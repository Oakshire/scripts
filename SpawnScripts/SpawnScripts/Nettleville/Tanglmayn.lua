--[[
	Script Name	: SpawnScripts/Nettleville/Tanglmayn.lua
	Script Purpose	: Tanglmayn <Combat Arts>
	Script Author	: John Adams
	Script Date	: 2008.09.24
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 3487732561, 2995138728, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, traveler! We have the finest supplies to fill your adventuring needs.", "smile", 509171300, 3181487898, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 2213475197, 3871690614, Spawn)
	else
	end

end
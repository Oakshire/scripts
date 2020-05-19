--[[
	Script Name	: SpawnScripts/Starcrest/Unuesh.lua
	Script Purpose	: Unuesh <Tailor>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 4271285862, 1774320762, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 857840270, 941389485, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 2447200130, 2600666744, Spawn)
	end
end
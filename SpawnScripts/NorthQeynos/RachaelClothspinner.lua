--[[
	Script Name		: SpawnScripts/NorthQeynos/RachaelClothspinner.lua
	Script Purpose	: Rachael Clothspinner
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
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
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_2/ft/service/merchant/human_merchant_service_good_2_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 4082049284, 258435992, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/rachael_clothspinner/qey_north/100_merchant_rachael_clothspinner_g4_callout1_7d8b50df.mp3", "Huh?  Oh hello.  Hmmm, I know that needle is around here somewhere, but just in case, watch your step!", "", 3754593898, 2394634278, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_2/ft/service/merchant/human_merchant_service_good_2_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 2230459021, 1376449266, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_2/ft/service/merchant/human_merchant_service_good_2_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 218555884, 644636009, Spawn, 0)
	end
end
--[[
	Script Name	: SpawnScripts/SouthQeynos/AzimaKaddor.lua
	Script Purpose	: Azima Kaddor <Armorsmith>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/service/merchant/erudite_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 212313057, 12730672, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/service/merchant/erudite_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 2546361989, 1647933100, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/service/merchant/erudite_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What is it I can help you with?", "bow", 3088877830, 703805717, Spawn, 0)
	end

end


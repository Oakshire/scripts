--[[
	Script Name	: SpawnScripts/QeynosHarbor/NelisGreenpocket.lua
	Script Purpose	: Nelis Greenpocket <Tailor>
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

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 1035878974, 1582137754, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 3623244639, 2766324485, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 1122140911, 2707150069, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 41344948, 2516334772, Spawn)
	else
	end

end


--[[
	Script Name	: SpawnScripts/TheRuins/ArmsdealerNylzs.lua
	Script Purpose	: Arms Dealer Nylzs <Weaponsmith>
	Script Author	: jakejp
	Script Date	: 2020.04.28
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

	local choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_hail_gm_1a08e567.mp3", "Hello! Can I offer you one of our new lifetime extended warranties for any merchandise you purchase?  ", "nod", 1197055422, 631535840, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 105908870, 230263487, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today, or am I just wasting my time?  This isn't a museum display you know!", "glare", 1394544165, 1181852771, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_aoi_gm_b9dbd27d.mp3", "Only traitors to the Overlord would pass up a bargain like this.  You're not a traitor are you?", "scold", 3019943489, 1406568446, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 2596269432, 669710728, Spawn)
	else
	end

end


--[[
	Script Name	: SpawnScripts/ScaleYard/Valseth.lua
	Script Purpose	: Valseth <Combat Arts>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 651549003, 3080028152, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 259001786, 3030907314, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_hail_gf_7d521aa2.mp3", "Hello! Can I offer you one of our new lifetime extended warranties for any merchandise you purchase?  ", "nod", 1919752795, 2899530992, Spawn)
	end

end


--[[
	Script Name	: SpawnScripts/ScaleYard/LornMcHalford.lua
	Script Purpose	: Lorn McHalford <Shieldsmith>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/merchant/barbarian_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 2075685854, 2333149890, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/merchant/barbarian_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 910886868, 2769739896, Spawn)
	end

end


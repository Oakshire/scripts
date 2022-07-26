--[[
	Script Name		: SpawnScripts/ScaleYard/LornMcHalford.lua
	Script Purpose	: Lorn McHalford
	Script Author	: torsten
	Script Date		: 2022.07.25
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
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/merchant/barbarian_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 910886868, 2769739896, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/merchant/barbarian_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 2075685854, 2333149890, Spawn, 0)
	end
end
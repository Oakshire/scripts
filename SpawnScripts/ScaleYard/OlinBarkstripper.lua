--[[
	Script Name		: SpawnScripts/ScaleYard/OlinBarkstripper.lua
	Script Purpose	: Olin Barkstripper
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
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/merchant/barbarian_merchant_service_evil_1_aoi_gm_b9dbd27d.mp3", "Only traitors to the Overlord would pass up a bargain like this.  You're not a traitor are you?", "scold", 235175968, 3339718033, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/merchant/barbarian_merchant_service_evil_1_hail_gm_1a08e567.mp3", "Hello! Can I offer you one of our new lifetime extended warranties for any merchandise you purchase?  ", "nod", 2645212460, 3162600369, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/merchant/barbarian_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 2075685854, 2333149890, Spawn, 0)
	end
end
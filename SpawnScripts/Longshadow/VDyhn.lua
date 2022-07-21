--[[
	Script Name		: SpawnScripts/LongshadowAlley/VDyhn.lua
	Script Purpose	: V`Dyhn
	Script Author	: torsten
	Script Date		: 2022.07.20
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
		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_aoi_gm_53388b91.mp3", "Only traitors to the Overlord would pass up a bargain like this.  You're not a traitor are you?", "scold", 1403936443, 3068231605, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 2781916825, 678640011, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 898812878, 1402234103, Spawn, 0)
	end
end
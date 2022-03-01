--[[
	Script Name	: SpawnScripts/Graveyard/RTok.lua
	Script Purpose	: R'Tok <Merchant>
	Script Author	: Scatman
	Script Date	: 2009.07.25
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "RandomChat")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomChat(NPC, Spawn)
end

function RandomChat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_aoi_gm_53388b91.mp3", "Only traitors to the Overlord would pass up a bargain like this.  You're not a traitor are you?", "scold", 1403936443, 3068231605, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 2781916825, 678640011, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 898812878, 1402234103, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 1302153135, 3653961458, Spawn)
	end
end

--[[
	Script Name	: SpawnScripts/NorthQeynos/SneedGalliway.lua
	Script Purpose	: Sneed Galliway <General Goods>
	Script Author	: Dorbin
	Script Date	: 2022.01.11
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
local Sneed = 5548

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
ProvidesQuest(NPC,Sneed)
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
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/housing/human_housing_service_good_1_aoi_gm_1fa85d79.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wave", 903813734, 2512856176, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Step right up!  I've got all the adventuring garb you'll ever be needing outside the city gates!  The outside world is a dangerous place; make sure you're equipped to deal with the challenge!", "", 469990134, 2264633052, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 892528408, 239693863, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 2541554579, 2951095822, Spawn)
	else
	end

end


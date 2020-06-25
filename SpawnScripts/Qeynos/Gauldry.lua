--[[
	Script Name	: SpawnScripts/SouthQeynos/Gauldry.lua
	Script Purpose	: Gauldry <Shieldsmith>
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

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_good_2/ft/service/merchant/halfling_merchant_service_good_2_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 841946130, 955678666, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_good_2/ft/service/merchant/halfling_merchant_service_good_2_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 561391296, 3932646865, Spawn)
	else
	end

end


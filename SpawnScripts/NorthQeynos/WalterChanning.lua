--[[
	Script Name		: SpawnScripts/NorthQeynos/WalterChanning.lua
	Script Purpose	: Walter Channing
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
	FaceTarget(Spawn, NPC)
end

function InRange(NPC,Spawn)
if math.random(1,100) <= 60 then
	local choice = MakeRandomInt(1,2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/merchant_walter_channing/qey_north/100_retainer_channing_walter_g4_multhail1_95c384e8.mp3", "Are you interested in my armor? I've no time for small talk and don't need any help.", "", 39831011, 3044568057, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/merchant_walter_channing/qey_north/100_retainer_channing_walter_g4_callout1_182d9ab2.mp3", "May I interest you in seeing some of the fine armor and weapons that made the Ironforge family famous?", "", 3181523989, 773123783, Spawn, 0)
    end
    end
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/merchant_walter_channing/qey_north/100_retainer_channing_walter_g4_callout1_182d9ab2.mp3", "May I interest you in seeing some of the fine armor and weapons that made the Ironforge family famous?", "", 3181523989, 773123783, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/merchant_walter_channing/qey_north/100_retainer_channing_walter_g4_multhail1_95c384e8.mp3", "Are you interested in my armor? I've no time for small talk and don't need any help.", "", 39831011, 3044568057, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_2/ft/service/merchant/human_merchant_service_good_2_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 3492716408, 910029111, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_2/ft/service/merchant/human_merchant_service_good_2_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 515505319, 274009138, Spawn, 0)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_2/ft/service/merchant/human_merchant_service_good_2_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 1383875147, 384287053, Spawn, 0)
	end
end
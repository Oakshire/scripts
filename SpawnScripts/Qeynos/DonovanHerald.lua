--[[
	Script Name	: SpawnScripts/SouthQeynos/DonovanHerald.lua
	Script Purpose	: Donovan Herald <Pet Merchant>
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
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/petretailer/human_petretailer_service_good_1_hail_gm_2485b1ad.mp3", "Down, boy! Down, boy!", "no", 2681431264, 151889846, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/petretailer/human_petretailer_service_good_1_hail_gm_4560dd95.mp3", "Buy today and you'll receive a free litter box!", "thumbsup", 2933047019, 374610986, Spawn)
	else
	end

end


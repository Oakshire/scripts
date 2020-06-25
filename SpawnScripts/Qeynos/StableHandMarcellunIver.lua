--[[
	Script Name	: SpawnScripts/SouthQeynos/StableHandMarcellunIver.lua
	Script Purpose	: Stable Hand Marcellun Iver <Horse Merchant>
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

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/petretailer/barbarian_petretailer_service_good_1_hail_gm_4560dd95.mp3", "Buy today and you'll receive a free feed bag!", "thumbsup", 3510057978, 1211581239, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Mounts fuuuur sale! Mounts fuuuur sale!", "wave", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/petretailer/barbarian_petretailer_service_good_1_hail_gm_2485b1ad.mp3", "Down, boy! Down, boy!", "no", 522373492, 4294322349, Spawn)
	else
	end

end


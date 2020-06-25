--[[
	Script Name	: SpawnScripts/QeynosHarbor/Evenwood.lua
	Script Purpose	: Evenwood <Guard>
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
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 2088886924, 3736631596, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 739074204, 2925833259, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty.  Should you get into trouble, seek me out.", "attention", 3027655540, 4120709915, Spawn)
	else
	end

end


--[[
	Script Name	: SpawnScripts/ElddarGrove/GuardKaladenth.lua
	Script Purpose	: Guard Kaladenth <Guard>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty.  Should you get into trouble, seek me out.", "attention", 3027655540, 4120709915, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 739074204, 2925833259, Spawn)
	else
	end

end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 594.35, -21.42, -257.29, 2, 5)
	MovementLoopAddLocation(NPC, 580.75, -20.84, -259, 2, 0)
	MovementLoopAddLocation(NPC, 553.51, -20.04, -277.93, 2, 0)
	MovementLoopAddLocation(NPC, 518.75, -20.64, -286.51, 2, 0)
	MovementLoopAddLocation(NPC, 550.5, -21.45, -311.58, 2, 0)
	MovementLoopAddLocation(NPC, 545.01, -21.17, -325.85, 2, 0)
	MovementLoopAddLocation(NPC, 530.36, -21.04, -314.28, 2, 0)
	MovementLoopAddLocation(NPC, 520.82, -20.75, -290.82, 2, 0)
	MovementLoopAddLocation(NPC, 538.52, -20.27, -282.51, 2, 0)
	MovementLoopAddLocation(NPC, 550.93, -20.18, -281.09, 2, 0)
	MovementLoopAddLocation(NPC, 555.04, -20.01, -277.3, 2, 0)
	MovementLoopAddLocation(NPC, 574.43, -20.55, -266.52, 2, 0)
	MovementLoopAddLocation(NPC, 584.22, -20.78, -258.42, 2, 0)
	MovementLoopAddLocation(NPC, 594.35, -21.42, -257.29, 2, 5)
end

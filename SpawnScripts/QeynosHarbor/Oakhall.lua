--[[
	Script Name		:	Bilur.lua
	Script Purpose	:	Waypoint Path for Bilur.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 01:10:38 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 2997871263, 2912813719, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty.  Should you get into trouble, seek me out.", "attention", 1945337199, 2685949436, Spawn)
	else
	end

end

function respawn(NPC)
	spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 802.60, -20.97, 136.78, 2, 20)
	MovementLoopAddLocation(NPC, 817.09, -23.31, 82.45, 2, 0)
	MovementLoopAddLocation(NPC, 833.86, -23.31, 44.3, 2, 0)
	MovementLoopAddLocation(NPC, 858.41, -25.37, 40.72, 2, 0)
	MovementLoopAddLocation(NPC, 911.08, -25.39, 37.14, 2, 0)
	MovementLoopAddLocation(NPC, 901.46, -25.37, -20.28, 2, 0)
	MovementLoopAddLocation(NPC, 893.95, -25.34, -48.41, 2, 0)
	MovementLoopAddLocation(NPC, 862.91, -25.43, -73.88, 2, 30)
	MovementLoopAddLocation(NPC, 893.95, -25.34, -48.41, 2, 0)
	MovementLoopAddLocation(NPC, 901.46, -25.37, -20.28, 2, 0)
	MovementLoopAddLocation(NPC, 911.08, -25.39, 37.14, 2, 0)
	MovementLoopAddLocation(NPC, 858.41, -25.37, 40.72, 2, 0)
	MovementLoopAddLocation(NPC, 833.86, -23.31, 44.3, 2, 0)
	MovementLoopAddLocation(NPC, 817.09, -23.31, 82.45, 2, 0)
	MovementLoopAddLocation(NPC, 802.60, -20.97, 136.78, 2, 20)
end



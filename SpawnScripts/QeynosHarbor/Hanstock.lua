--[[
	Script Name		:	Hanstock.lua
	Script Purpose	:	Waypoint Path for Hanstock.lua
	Script Author	:	Auto Generated
	Script Date		:	04/08/2020 11:54:53 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty.  Should you get into trouble, seek me out.", "attention", 1945337199, 2685949436, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_76da37c9.mp3", "I hate working this shift!  If the gnolls don't attack now, I may die of boredom.", "grumble", 4099618783, 4191002419, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 2997871263, 2912813719, Spawn)
	else
	end

end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 874.28, -25.36, -62.98, 2, 0)
	MovementLoopAddLocation(NPC, 894.59, -25.36, -50.05, 2, 0)
	MovementLoopAddLocation(NPC, 905.14, -25.37, -20.73, 2, 0)
	MovementLoopAddLocation(NPC, 903.37, -25.37, 14.31, 2, 0)
	MovementLoopAddLocation(NPC, 949.04, -25.5, 30.04, 2, 0)
	MovementLoopAddLocation(NPC, 960.34, -25.47, 18.04, 2, 0)
	MovementLoopAddLocation(NPC, 989.2, -25.11, 15.34, 2, 30)
	MovementLoopAddLocation(NPC, 963.89, -25.47, 16.77, 2, 0)
	MovementLoopAddLocation(NPC, 947.16, -25.5, 30.8, 2, 0)
	MovementLoopAddLocation(NPC, 934.16, -25.52, 25.45, 2, 0)
	MovementLoopAddLocation(NPC, 922.35, -25.49, 51.75, 2, 0)
	MovementLoopAddLocation(NPC, 859.14, -25.37, 40.63, 2, 0)
	MovementLoopAddLocation(NPC, 836.86, -23.28, 43, 2, 0)
	MovementLoopAddLocation(NPC, 820.26, -23.32, 78.33, 2, 0)
	MovementLoopAddLocation(NPC, 812.84, -23.31, 104.84, 2, 0)
	MovementLoopAddLocation(NPC, 802.18, -20.93, 141.48, 2, 0)
	MovementLoopAddLocation(NPC, 812.84, -23.31, 104.84, 2, 0)
	MovementLoopAddLocation(NPC, 820.26, -23.32, 78.33, 2, 0)
	MovementLoopAddLocation(NPC, 836.86, -23.28, 43, 2, 0)
	MovementLoopAddLocation(NPC, 859.14, -25.37, 40.63, 2, 0)
	MovementLoopAddLocation(NPC, 922.35, -25.49, 51.75, 2, 0)
	MovementLoopAddLocation(NPC, 934.16, -25.52, 25.45, 2, 0)
	MovementLoopAddLocation(NPC, 947.16, -25.5, 30.8, 2, 0)
	MovementLoopAddLocation(NPC, 963.89, -25.47, 16.77, 2, 0)
	MovementLoopAddLocation(NPC, 989.2, -25.11, 15.34, 2, 0)
	MovementLoopAddLocation(NPC, 960.34, -25.47, 18.04, 2, 0)
	MovementLoopAddLocation(NPC, 949.04, -25.5, 30.04, 2, 0)
	MovementLoopAddLocation(NPC, 903.37, -25.37, 14.31, 2, 0)
	MovementLoopAddLocation(NPC, 905.14, -25.37, -20.73, 2, 0)
	MovementLoopAddLocation(NPC, 894.59, -25.36, -50.05, 2, 0)
	MovementLoopAddLocation(NPC, 874.28, -25.36, -62.98, 2, 0)
end



--[[
	Script Name		:	tesilah.lua
	Script Purpose	:	Waypoint Path for tesilah.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 03:21:57 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1,7)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_2c5409ba.mp3", "Another lovely day in the city of Qeynos!", "sigh", 2759856909, 614688407, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_ef2b9651.mp3", "Will you quit pestering me?  Don't force me to summon the guards!", "tapfoot", 3345611839, 1442739842, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_4d212798.mp3", "I'm confident that the merchants of our village will fill all equipment needs with the utmost hospitality.", "smile", 2600666744, 586734676, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_e58035f3.mp3", "What do you want? Leave me be!", "shrug", 1323474108, 3355478224, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_9b2049a3.mp3", "Well met, friend.  It's good to make your acquaintance!", "bow", 754727055, 3165426316, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_7e3b456a.mp3", "Hail, pleasure to meet you.", "agree", 471367832, 2417424572, Spawn)
	elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_13b79d2d.mp3", "Welcome...welcome traveler, to the fair city of Qeynos! My, isn't it a magnificent day?", "hello", 3746934207, 794965138, Spawn)
	else
	end
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 710.44, -19.45, 176.78, 2, 0)
	MovementLoopAddLocation(NPC, 708.82, -19.45, 180.77, 2, 0)
	MovementLoopAddLocation(NPC, 705.8, -19.54, 188.21, 2, 0)
	MovementLoopAddLocation(NPC, 703.43, -19.53, 195.03, 2, 0)
	MovementLoopAddLocation(NPC, 690.8, -19.52, 198.95, 2, 0)
	MovementLoopAddLocation(NPC, 686.49, -19.52, 213.39, 2, 0)
	MovementLoopAddLocation(NPC, 682.72, -19.49, 216.29, 2, 0)
	MovementLoopAddLocation(NPC, 637.94, -19.1, 229.9, 2, 0)
	MovementLoopAddLocation(NPC, 636.11, -17.14, 224.31, 2, 0)
	MovementLoopAddLocation(NPC, 626.03, -17.14, 226.88, 2, 0)
	MovementLoopAddLocation(NPC, 610.99, -16.46, 229.12, 2, 0)
	MovementLoopAddLocation(NPC, 595.42, -16.57, 232.07, 2, 0)
	MovementLoopAddLocation(NPC, 576.71, -16.57, 235.12, 2, 0)
	MovementLoopAddLocation(NPC, 573.15, -16.57, 235.49, 2, 0)
	MovementLoopAddLocation(NPC, 573.66, -17.93, 241.36, 2, 0)
	MovementLoopAddLocation(NPC, 552.73, -17.69, 242.2, 2, 0)
	MovementLoopAddLocation(NPC, 531.54, -18.37, 241.84, 2, 0)
	MovementLoopAddLocation(NPC, 494.22, -20.02, 239.88, 2, 0)
	MovementLoopAddLocation(NPC, 467.68, -21.75, 234.49, 2, 0)
	MovementLoopAddLocation(NPC, 458.2, -21.43, 226.86, 2, 0)
	MovementLoopAddLocation(NPC, 463.73, -21.39, 213.35, 2, 0)
	MovementLoopAddLocation(NPC, 469, -21.28, 200.5, 2, 0)
	MovementLoopAddLocation(NPC, 463.68, -20.77, 191.39, 2, 0)
	MovementLoopAddLocation(NPC, 469, -21.28, 200.5, 2, 0)
	MovementLoopAddLocation(NPC, 463.73, -21.39, 213.35, 2, 0)
	MovementLoopAddLocation(NPC, 458.2, -21.43, 226.86, 2, 0)
	MovementLoopAddLocation(NPC, 467.68, -21.75, 234.49, 2, 0)
	MovementLoopAddLocation(NPC, 494.22, -20.02, 239.88, 2, 0)
	MovementLoopAddLocation(NPC, 531.54, -18.37, 241.84, 2, 0)
	MovementLoopAddLocation(NPC, 552.73, -17.69, 242.2, 2, 0)
	MovementLoopAddLocation(NPC, 573.66, -17.93, 241.36, 2, 0)
	MovementLoopAddLocation(NPC, 573.15, -16.57, 235.49, 2, 0)
	MovementLoopAddLocation(NPC, 576.71, -16.57, 235.12, 2, 0)
	MovementLoopAddLocation(NPC, 595.42, -16.57, 232.07, 2, 0)
	MovementLoopAddLocation(NPC, 610.99, -16.46, 229.12, 2, 0)
	MovementLoopAddLocation(NPC, 626.03, -17.14, 226.88, 2, 0)
	MovementLoopAddLocation(NPC, 636.11, -17.14, 224.31, 2, 0)
	MovementLoopAddLocation(NPC, 637.94, -19.1, 229.9, 2, 0)
	MovementLoopAddLocation(NPC, 682.72, -19.49, 216.29, 2, 0)
	MovementLoopAddLocation(NPC, 686.49, -19.52, 213.39, 2, 0)
	MovementLoopAddLocation(NPC, 690.8, -19.52, 198.95, 2, 0)
	MovementLoopAddLocation(NPC, 703.43, -19.53, 195.03, 2, 0)
	MovementLoopAddLocation(NPC, 705.8, -19.54, 188.21, 2, 0)
	MovementLoopAddLocation(NPC, 708.82, -19.45, 180.77, 2, 0)
	MovementLoopAddLocation(NPC, 710.44, -19.45, 176.78, 2, 0)
end



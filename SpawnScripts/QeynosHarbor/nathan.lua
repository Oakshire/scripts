--[[
	Script Name		:	nathanironforge.lua
	Script Purpose	:	Waypoint Path for nathanironforge.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 01:25:37 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function InRange(NPC, Spawn)
		local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_cat_gm_fdc32a9.mp3", "Come back here kitty!", "wave", 204283170, 334524744, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_badkid/ft/eco/evil/human_eco_evil_badkid_pig_gm_9fa4475d.mp3", "Run ya swine. Run!", "wave", 1654188343, 2070658176, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_hail_gm_dc9519d6.mp3", "I want to join the Qeynos Guard when I grow up!", "salute", 3878579501, 1793000405, Spawn)
	else
		local choice = math.random(1,2)

		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_hail_gm_5674cc18.mp3", "Have you seen a Gnoll before?", "", 3064755312, 374536170, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_hail_gm_110eef44.mp3", "Have you been inside the castle? I want to go there someday!", "smile", 2372987392, 3554768792, Spawn)
		else
		end
	end
	end

function LeaveRange(NPC, Spawn)
end



function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 780.46, -23.28, 81.74, 6, 0)
	MovementLoopAddLocation(NPC, 812.79, -23.34, 79.12, 6, 0)
	MovementLoopAddLocation(NPC, 832.09, -23.31, 46.9, 6, 0)
	MovementLoopAddLocation(NPC, 861.34, -25.37, 42.41, 6, 0)
	MovementLoopAddLocation(NPC, 892.74, -25.5, 54.12, 6, 0)
	MovementLoopAddLocation(NPC, 864.29, -25.5, 111.67, 6, 0)
	MovementLoopAddLocation(NPC, 906.32, -25.37, 7.59, 6, 0)
	MovementLoopAddLocation(NPC, 891.37, -25.36, -48.18, 6, 0)
	MovementLoopAddLocation(NPC, 862.76, -25.46, -72.81, 6, 0)
	MovementLoopAddLocation(NPC, 810.88, -20.4, -61.54, 6, 0)
	MovementLoopAddLocation(NPC, 762.83, -21.57, -60.8, 6, 0)
	MovementLoopAddLocation(NPC, 762.12, -20.8, -20.16, 6, 0)
	MovementLoopAddLocation(NPC, 750.64, -20.93, 4.63, 6, 0)
	MovementLoopAddLocation(NPC, 703.9, -21.08, -53.43, 6, 0)
	MovementLoopAddLocation(NPC, 731.13, -21.32, -59.2, 6, 0)
	MovementLoopAddLocation(NPC, 885.24, -25.36, -61.67, 6, 0)
	MovementLoopAddLocation(NPC, 904.09, -25.37, 12.44, 6, 0)
	MovementLoopAddLocation(NPC, 950.73, -25.5, 32.34, 6, 0)
	MovementLoopAddLocation(NPC, 952.78, -25.5, 20.96, 6, 0)
	MovementLoopAddLocation(NPC, 950.73, -25.5, 32.34, 6, 0)
	MovementLoopAddLocation(NPC, 904.09, -25.37, 12.44, 6, 0)
	MovementLoopAddLocation(NPC, 885.24, -25.36, -61.67, 6, 0)
	MovementLoopAddLocation(NPC, 731.13, -21.32, -59.2, 6, 0)
	MovementLoopAddLocation(NPC, 703.9, -21.08, -53.43, 6, 0)
	MovementLoopAddLocation(NPC, 750.64, -20.93, 4.63, 6, 0)
	MovementLoopAddLocation(NPC, 762.12, -20.8, -20.16, 6, 0)
	MovementLoopAddLocation(NPC, 762.83, -21.57, -60.8, 6, 0)
	MovementLoopAddLocation(NPC, 810.88, -20.4, -61.54, 6, 0)
	MovementLoopAddLocation(NPC, 862.76, -25.46, -72.81, 6, 0)
	MovementLoopAddLocation(NPC, 891.37, -25.36, -48.18, 6, 0)
	MovementLoopAddLocation(NPC, 906.32, -25.37, 7.59, 6, 0)
	MovementLoopAddLocation(NPC, 864.29, -25.5, 111.67, 6, 0)
	MovementLoopAddLocation(NPC, 892.74, -25.5, 54.12, 6, 0)
	MovementLoopAddLocation(NPC, 861.34, -25.37, 42.41, 6, 0)
	MovementLoopAddLocation(NPC, 832.09, -23.31, 46.9, 6, 0)
	MovementLoopAddLocation(NPC, 812.79, -23.34, 79.12, 6, 0)
	MovementLoopAddLocation(NPC, 780.46, -23.28, 81.74, 6, 0)
end



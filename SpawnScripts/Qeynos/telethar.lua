--[[
	Script Name		:	telethar.lua
	Script Purpose	:	Waypoint Path for telethar.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 03:06:09 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		local choice = math.random(1,6)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_4121a9b2.mp3", "The Concordium uses ancient and forgotten knowledge to protect us from the shadows that surround Qeynos.", "", 1945306751, 352506246, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_15aa4eed.mp3", "Those who have neither the abilities nor the aspirations to pursue the intellectual arts will find a home at the Ironforge Exchange.", "", 523104392, 3732258776, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_88bbd1aa.mp3", "The Tunarian Alliance does not see the greater issues beyond individual evils. Their forests might be scorched wastelands and they would still be fending off poachers.", "", 3133325899, 3316523299, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_987a9a3c.mp3", "While the Celestial Watch futilely awaits word from its forgotten gods the Concordium has harnessed the true power that blazes within each of us.", "", 3806603086, 3205979382, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_b52cd580.mp3", "The Qeynos Guard cannot defend us from dark forces it neither sees nor understands.", "", 1941375851, 1104708565, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_30_gf_1e49a37f.mp3", "Your courageous actions have assisted the Concordium in its quest for all knowledge.", "", 1170821333, 3893107670, Spawn)
	else
	end

end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 566.15, -17.12, 258.02, 2, 0)
	MovementLoopAddLocation(NPC, 570.57, -17.12, 255.62, 2, 0)
	MovementLoopAddLocation(NPC, 576.24, -17.12, 254.42, 2, 0)
	MovementLoopAddLocation(NPC, 575.73, -17.64, 246.7, 2, 0)
	MovementLoopAddLocation(NPC, 562.13, -17.59, 247.86, 2, 0)
	MovementLoopAddLocation(NPC, 556.95, -15.03, 216.91, 2, 0)
	MovementLoopAddLocation(NPC, 544.21, -15.27, 199.34, 2, 0)
	MovementLoopAddLocation(NPC, 544.08, -10.16, 165.07, 2, 0)
	MovementLoopAddLocation(NPC, 546.91, -10.52, 153.48, 2, 0)
	MovementLoopAddLocation(NPC, 574.95, -10.59, 151.54, 2, 0)
	MovementLoopAddLocation(NPC, 622.27, -12.27, 145.9, 2, 6)
	MovementLoopAddLocation(NPC, 603.56, -12.04, 143.79, 2, 0)
	MovementLoopAddLocation(NPC, 583.87, -10.25, 146.24, 2, 0)
	MovementLoopAddLocation(NPC, 557.17, -10.31, 148.93, 2, 0)
	MovementLoopAddLocation(NPC, 537.01, -10.13, 148.31, 2, 0)
	MovementLoopAddLocation(NPC, 524.04, -9.9, 146.34, 2, 0)
	MovementLoopAddLocation(NPC, 513.04, -9.83, 143.52, 2, 0)
	MovementLoopAddLocation(NPC, 502.81, -11.11, 140.93, 2, 0)
	MovementLoopAddLocation(NPC, 481.32, -11.53, 117.39, 2, 0)
	MovementLoopAddLocation(NPC, 482.48, -11.53, 118.06, 2, 0)
	MovementLoopAddLocation(NPC, 486.56, -11.53, 120.94, 2, 0)
	MovementLoopAddLocation(NPC, 489.18, -11.52, 123.86, 2, 0)
	MovementLoopAddLocation(NPC, 489.84, -11.51, 126.57, 2, 0)
	MovementLoopAddLocation(NPC, 489.39, -11.51, 129.92, 2, 0)
	MovementLoopAddLocation(NPC, 489.8, -11.42, 139.24, 2, 0)
	MovementLoopAddLocation(NPC, 491.06, -13.04, 150.73, 2, 0)
	MovementLoopAddLocation(NPC, 475.52, -20.25, 184.58, 2, 0)
	MovementLoopAddLocation(NPC, 463.35, -20.75, 189.73, 2, 0)
	MovementLoopAddLocation(NPC, 464.87, -20.8, 191.77, 2, 0)
	MovementLoopAddLocation(NPC, 466.04, -20.9, 195.96, 2, 0)
	MovementLoopAddLocation(NPC, 465.95, -21.02, 199.64, 2, 0)
	MovementLoopAddLocation(NPC, 464.46, -21.07, 203.79, 2, 0)
	MovementLoopAddLocation(NPC, 462.55, -21.1, 207.5, 2, 0)
	MovementLoopAddLocation(NPC, 449.43, -21.34, 229.64, 2, 7)
	MovementLoopAddLocation(NPC, 462.55, -21.1, 207.5, 2, 0)
	MovementLoopAddLocation(NPC, 464.46, -21.07, 203.79, 2, 0)
	MovementLoopAddLocation(NPC, 465.95, -21.02, 199.64, 2, 0)
	MovementLoopAddLocation(NPC, 466.04, -20.9, 195.96, 2, 0)
	MovementLoopAddLocation(NPC, 464.87, -20.8, 191.77, 2, 0)
	MovementLoopAddLocation(NPC, 463.35, -20.75, 189.73, 2, 0)
	MovementLoopAddLocation(NPC, 475.52, -20.25, 184.58, 2, 0)
	MovementLoopAddLocation(NPC, 491.06, -13.04, 150.73, 2, 0)
	MovementLoopAddLocation(NPC, 489.8, -11.42, 139.24, 2, 0)
	MovementLoopAddLocation(NPC, 489.39, -11.51, 129.92, 2, 0)
	MovementLoopAddLocation(NPC, 489.84, -11.51, 126.57, 2, 0)
	MovementLoopAddLocation(NPC, 489.18, -11.52, 123.86, 2, 0)
	MovementLoopAddLocation(NPC, 486.56, -11.53, 120.94, 2, 0)
	MovementLoopAddLocation(NPC, 482.48, -11.53, 118.06, 2, 0)
	MovementLoopAddLocation(NPC, 481.32, -11.53, 117.39, 2, 0)
	MovementLoopAddLocation(NPC, 502.81, -11.11, 140.93, 2, 0)
	MovementLoopAddLocation(NPC, 513.04, -9.83, 143.52, 2, 0)
	MovementLoopAddLocation(NPC, 524.04, -9.9, 146.34, 2, 0)
	MovementLoopAddLocation(NPC, 537.01, -10.13, 148.31, 2, 0)
	MovementLoopAddLocation(NPC, 557.17, -10.31, 148.93, 2, 0)
	MovementLoopAddLocation(NPC, 583.87, -10.25, 146.24, 2, 0)
	MovementLoopAddLocation(NPC, 603.56, -12.04, 143.79, 2, 0)
	MovementLoopAddLocation(NPC, 622.27, -12.27, 145.9, 2, 0)
	MovementLoopAddLocation(NPC, 574.95, -10.59, 151.54, 2, 0)
	MovementLoopAddLocation(NPC, 546.91, -10.52, 153.48, 2, 0)
	MovementLoopAddLocation(NPC, 544.08, -10.16, 165.07, 2, 0)
	MovementLoopAddLocation(NPC, 544.21, -15.27, 199.34, 2, 0)
	MovementLoopAddLocation(NPC, 556.95, -15.03, 216.91, 2, 0)
	MovementLoopAddLocation(NPC, 562.13, -17.59, 247.86, 2, 0)
	MovementLoopAddLocation(NPC, 575.73, -17.64, 246.7, 2, 0)
	MovementLoopAddLocation(NPC, 576.24, -17.12, 254.42, 2, 0)
	MovementLoopAddLocation(NPC, 570.57, -17.12, 255.62, 2, 0)
	MovementLoopAddLocation(NPC, 566.15, -17.12, 258.02, 2, 0)
end



--[[
	Script Name	: SpawnScripts/Starcrest/AnevayaStarchaser.lua
	Script Purpose	: Anevaya Starchaser 
	Script Author	: Dorbin
	Script Date	: 06.29.2022
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
    waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if GetFactionAmount(Spawn,11) <0 then
     	FaceTarget(NPC, Spawn)
        FactionChecking(NPC, Spawn, faction)
        else       
	if math.random(0, 100) <= 22 then
     	FaceTarget(NPC, Spawn)
		Talk(NPC, Spawn)
	end
end
end

function hailed(NPC, Spawn)
	if GetFactionAmount(Spawn,11) <0 then
     	FaceTarget(NPC, Spawn)
        FactionChecking(NPC, Spawn, faction)
        else    
	FaceTarget(NPC, Spawn)
	Talk(NPC, Spawn)
    end
end

function Talk(NPC, Spawn)
local ConcFac = GetFactionAmount(Spawn, 136)
    if ConcFac >=30000 then
	local choice = math.random(1, 7)
	elseif ConcFac >=10000 then
	local choice = math.random(1, 6)
    else
	local choice = math.random(1, 5)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_15aa4eed.mp3", "Those who have neither the abilities nor the aspirations to pursue the intellectual arts will find a home at the Ironforge Exchange.", "", 523104392, 3732258776, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_4121a9b2.mp3", "The Concordium uses ancient and forgotten knowledge to protect us from the shadows that surround Qeynos.", "", 1945306751, 352506246, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_88bbd1aa.mp3", "The Tunarian Alliance does not see the greater issues beyond individual evils. Their forests might be scorched wastelands and they would still be fending off poachers.", "", 3133325899, 3316523299, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_987a9a3c.mp3", "While the Celestial Watch futilely awaits word from its forgotten gods the Concordium has harnessed the true power that blazes within each of us.", "", 3806603086, 3205979382, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_b52cd580.mp3", "The Qeynos Guard cannot defend us from dark forces it neither sees nor understands.", "", 1941375851, 1104708565, Spawn)
	elseif choice == 6 then
    	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_10_gf_f5fd7a50.mp3", "To aid the Concordium is to unleash the force for good that burns within us all!", "thank", 3469670242, 3251902799, Spawn)
	elseif choice == 7 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_30_gf_1e49a37f.mp3", "Your couragous actions have assisted the Concordium in its quest for all knowledge!", "cheer", 1170821333, 3893107670, Spawn)
	    end
    end
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 731.57, -20.43, 304.8, 2, math.random(30,55))
	MovementLoopAddLocation(NPC, 730.7, -20.43, 304.44, 2, 0)
	MovementLoopAddLocation(NPC, 729.66, -20.43, 300.31, 2, 0)
	MovementLoopAddLocation(NPC, 726.24, -20.44, 293.62, 2, 0)
	MovementLoopAddLocation(NPC, 724.46, -20.42, 286.29, 2, 0)
	MovementLoopAddLocation(NPC, 728.99, -20.42, 279.29, 2, 0)
	MovementLoopAddLocation(NPC, 734.91, -20.42, 276.27, 2, 0)
	MovementLoopAddLocation(NPC, 743.84, -20.5, 275.8, 2, 0)
	MovementLoopAddLocation(NPC, 752.13, -20.56, 278.18, 2, math.random(15,25))
	MovementLoopAddLocation(NPC, 753.14, -20.56, 278.15, 2, 0)
	MovementLoopAddLocation(NPC, 762.16, -20.43, 286.1, 2, 0)
	MovementLoopAddLocation(NPC, 767.3, -20.43, 288.9, 2, 0)
	MovementLoopAddLocation(NPC, 773.59, -20.4, 290.15, 2, 0)
	MovementLoopAddLocation(NPC, 783.52, -20.51, 290.12, 2, 0)
	MovementLoopAddLocation(NPC, 795.43, -20.53, 291.11, 2, 0)
	MovementLoopAddLocation(NPC, 801.98, -20.36, 295.09, 2, math.random(30,55))
	MovementLoopAddLocation(NPC, 800.49, -20.41, 294.33, 2, 0)
	MovementLoopAddLocation(NPC, 800.8, -20.3, 300.16, 2, 0)
	MovementLoopAddLocation(NPC, 810.48, -24.35, 305.8, 2, 0)
	MovementLoopAddLocation(NPC, 813.85, -25.86, 312.7, 2, 0)
	MovementLoopAddLocation(NPC, 802.4, -25.76, 321.8, 2, 0)
	MovementLoopAddLocation(NPC, 791.79, -25.21, 327.95, 2, 0)
	MovementLoopAddLocation(NPC, 792.22, -25.21, 332.14, 2, 0)
	MovementLoopAddLocation(NPC, 794.83, -25.45, 331.18, 2, math.random(30,55))
	MovementLoopAddLocation(NPC, 795.99, -25.56, 329.8, 2, 0)
	MovementLoopAddLocation(NPC, 795.7, -25.49, 327.43, 2, 0)
	MovementLoopAddLocation(NPC, 785.42, -25.13, 330.11, 2, 0)
	MovementLoopAddLocation(NPC, 773.75, -24.85, 326.22, 2, math.random(30,55))
	MovementLoopAddLocation(NPC, 772.75, -24.85, 325.94, 2, 0)
	MovementLoopAddLocation(NPC, 772.07, -24.9, 328.77, 2, 0)
	MovementLoopAddLocation(NPC, 764.05, -25.19, 340.23, 2, 0)
	MovementLoopAddLocation(NPC, 756.61, -24.81, 341.29, 2, 0)
	MovementLoopAddLocation(NPC, 744.9, -24.68, 337.04, 2, 0)
	MovementLoopAddLocation(NPC, 734.06, -23.61, 331, 2, 0)
	MovementLoopAddLocation(NPC, 726.65, -20.42, 323.45, 2, 0)
	MovementLoopAddLocation(NPC, 724.12, -20.46, 318.08, 2, 0)
	MovementLoopAddLocation(NPC, 729.22, -20.52, 311.89, 2, 0)
	MovementLoopAddLocation(NPC, 732.64, -20.43, 305.37, 2, 0)
	MovementLoopAddLocation(NPC, 727.74, -20.43, 297.47, 2, 0)
	MovementLoopAddLocation(NPC, 716.78, -20.14, 283.95, 2, 0)
	MovementLoopAddLocation(NPC, 714.24, -19.95, 277.47, 2, 0)
	MovementLoopAddLocation(NPC, 709.18, -20.36, 262.92, 2, 0)
	MovementLoopAddLocation(NPC, 709.29, -20.3, 255.65, 2, math.random(30,55))
	MovementLoopAddLocation(NPC, 710.31, -20.37, 256.77, 2, 0)
	MovementLoopAddLocation(NPC, 716.35, -20.09, 273.85, 2, 0)
	MovementLoopAddLocation(NPC, 720.51, -20.3, 282.34, 2, 0)
	MovementLoopAddLocation(NPC, 730.98, -20.44, 298.08, 2, 0)
	MovementLoopAddLocation(NPC, 732.35, -20.43, 303.59, 2, 0)
end



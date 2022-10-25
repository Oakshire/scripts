--[[
	Script Name		:	treeskipper.lua
	Script Purpose	:	Waypoint Path for treeskipper.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 04:12:39 PM
	Script Notes	:	Locations collected from Live - Dialog modified 2022.04.22 Dorbin
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	waypoints(NPC)
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "noway", 0, 0, Spawn)
    else
SaySomething(NPC, Spawn)
end
end

function InRange(NPC, Spawn)
   if GetFactionAmount(Spawn,11) <0 then
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
    chance = MakeRandomInt(1,100)
    if chance <=25 then
    SaySomething(NPC, Spawn)
    end
    end
end

function SaySomething(NPC, Spawn)
    
	FaceTarget(NPC, Spawn)
		local choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_tunarianalliance/ft/eco/good/human_eco_good_tunarianalliance_hail_gm_1bda6347.mp3", "The destructive methods of the Qeynos Guard will ravage that which it seeks to defend.", "nod", 421213855, 4168573173, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_tunarianalliance/ft/eco/good/human_eco_good_tunarianalliance_hail_gm_e274bc0f.mp3", "The mechanical beasts of the Ironforge Exchange belch forth black clouds to choke out life within the forests.", "", 1242578412, 4198131350, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_tunarianalliance/ft/eco/good/human_eco_good_tunarianalliance_hail_gm_c57df74b.mp3", "I fear that the Concordium is unable to control its disciples. If corrupted the sorcerers would surely bring harm to the woodlands and their creatures.", "ponder", 63339104, 2681140716, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_tunarianalliance/ft/eco/good/human_eco_good_tunarianalliance_hail_gm_2c2d0ef6.mp3", "The Tunarian Alliance preserves our memories of the breathing trees and singing streams of Jaggedpine.", "agree", 1912930054, 3530428976, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_tunarianalliance/ft/eco/good/human_eco_good_tunarianalliance_hail_gm_24723d84.mp3", "While the land suffers and cries out for immediate protection the Celestial Watch is content to look to myths and superstitions for our salvation.", "agree", 1704735533, 1025969438, Spawn)
	else
	end
end

function LeaveRange(NPC, Spawn)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 448.85, -20.75, 212.18, 2, 0)
	MovementLoopAddLocation(NPC, 448.56, -19.39, 195.8, 2, 1)
	MovementLoopAddLocation(NPC, 448.56, -19.39, 195.8, 2, 8,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 462.67, -20.87, 199.08, 2, 0)
	MovementLoopAddLocation(NPC, 495.29, -11.85, 144.64, 2, 0)
	MovementLoopAddLocation(NPC, 527.8, -10.55, 150.67, 2, 0)
	MovementLoopAddLocation(NPC, 560.54, -10.58, 151.39, 2, 0)
	MovementLoopAddLocation(NPC, 617.98, -12.21, 143.91, 2, 0)
	MovementLoopAddLocation(NPC, 619.51, -12.47, 156.58, 2, 0)
	MovementLoopAddLocation(NPC, 621.44, -16.61, 198.37, 2, 0)
	MovementLoopAddLocation(NPC, 681.93, -19.52, 181.63, 2, 0)
	MovementLoopAddLocation(NPC, 691.43, -19.52, 195.66, 2, 0)
	MovementLoopAddLocation(NPC, 701.87, -19.53, 192.37, 2, 0)
	MovementLoopAddLocation(NPC, 704.66, -19.51, 184.42, 2, 0)
	MovementLoopAddLocation(NPC, 706.97, -19.45, 177.25, 2, 0)
	MovementLoopAddLocation(NPC, 710.37, -20.39, 164.85, 2, 0)
	MovementLoopAddLocation(NPC, 710.58, -20.57, 163.84, 2, 0)
	MovementLoopAddLocation(NPC, 713.44, -19.43, 175.98, 2, 0)
	MovementLoopAddLocation(NPC, 718.92, -19.62, 185.98, 2, 0)
	MovementLoopAddLocation(NPC, 721.15, -19.58, 192.81, 2, 0)
	MovementLoopAddLocation(NPC, 711.39, -19.53, 194.73, 2, 0)
	MovementLoopAddLocation(NPC, 707.3, -19.54, 193.15, 2, 0)
	MovementLoopAddLocation(NPC, 698.38, -19.52, 196.11, 2, 0)
	MovementLoopAddLocation(NPC, 688.66, -19.52, 199.3, 2, 0)
	MovementLoopAddLocation(NPC, 686.66, -19.52, 214.73, 2, 0)
	MovementLoopAddLocation(NPC, 670.13, -19.57, 221.33, 2, 0)
	MovementLoopAddLocation(NPC, 649.1, -19.17, 227.69, 2, 0)
	MovementLoopAddLocation(NPC, 612.44, -18.36, 236.41, 2, 0)
	MovementLoopAddLocation(NPC, 582.25, -17.94, 241.81, 2, 0)
	MovementLoopAddLocation(NPC, 559.17, -17.69, 243.04, 2, 0)
	MovementLoopAddLocation(NPC, 483.4, -20.64, 240.69, 2, 0)
	MovementLoopAddLocation(NPC, 461.95, -21.96, 232.57, 2, 0)
	MovementLoopAddLocation(NPC, 449.24, -20.76, 213.14, 2, 0)
	MovementLoopAddLocation(NPC, 449.13, -19.36, 195.78, 2, 0)
	MovementLoopAddLocation(NPC, 449.24, -20.76, 213.14, 2, 2)
	MovementLoopAddLocation(NPC, 449.24, -20.76, 213.14, 2, 8,"EcologyEmotes")	
	MovementLoopAddLocation(NPC, 461.95, -21.96, 232.57, 2, 0)
	MovementLoopAddLocation(NPC, 483.4, -20.64, 240.69, 2, 0)
	MovementLoopAddLocation(NPC, 559.17, -17.69, 243.04, 2, 0)
	MovementLoopAddLocation(NPC, 582.25, -17.94, 241.81, 2, 0)
	MovementLoopAddLocation(NPC, 612.44, -18.36, 236.41, 2, 0)
	MovementLoopAddLocation(NPC, 649.1, -19.17, 227.69, 2, 0)
	MovementLoopAddLocation(NPC, 670.13, -19.57, 221.33, 2, 0)
	MovementLoopAddLocation(NPC, 686.66, -19.52, 214.73, 2, 0)
	MovementLoopAddLocation(NPC, 688.66, -19.52, 199.3, 2, 0)
	MovementLoopAddLocation(NPC, 698.38, -19.52, 196.11, 2, 0)
	MovementLoopAddLocation(NPC, 707.3, -19.54, 193.15, 2, 0)
	MovementLoopAddLocation(NPC, 711.39, -19.53, 194.73, 2, 0)
	MovementLoopAddLocation(NPC, 721.15, -19.58, 192.81, 2, 0)
	MovementLoopAddLocation(NPC, 718.92, -19.62, 185.98, 2, 0)
	MovementLoopAddLocation(NPC, 713.44, -19.43, 175.98, 2, 0)
	MovementLoopAddLocation(NPC, 710.58, -20.57, 163.84, 2, 0)
	MovementLoopAddLocation(NPC, 710.37, -20.39, 164.85, 2, 0)
	MovementLoopAddLocation(NPC, 706.97, -19.45, 177.25, 2, 0)
	MovementLoopAddLocation(NPC, 704.66, -19.51, 184.42, 2, 0)
	MovementLoopAddLocation(NPC, 701.87, -19.53, 192.37, 2, 0)
	MovementLoopAddLocation(NPC, 691.43, -19.52, 195.66, 2, 0)
	MovementLoopAddLocation(NPC, 681.93, -19.52, 181.63, 2, 0)
	MovementLoopAddLocation(NPC, 621.44, -16.61, 198.37, 2, 0)
	MovementLoopAddLocation(NPC, 619.51, -12.47, 156.58, 2, 0)
	MovementLoopAddLocation(NPC, 617.98, -12.21, 143.91, 2, 0)
	MovementLoopAddLocation(NPC, 560.54, -10.58, 151.39, 2, 0)
	MovementLoopAddLocation(NPC, 527.8, -10.55, 150.67, 2, 0)
	MovementLoopAddLocation(NPC, 495.29, -11.85, 144.64, 2, 0)
	MovementLoopAddLocation(NPC, 462.67, -20.87, 199.08, 2, 0)
	MovementLoopAddLocation(NPC, 448.56, -19.39, 195.8, 2, 0)
	MovementLoopAddLocation(NPC, 448.85, -20.75, 212.18, 2, 0)
end



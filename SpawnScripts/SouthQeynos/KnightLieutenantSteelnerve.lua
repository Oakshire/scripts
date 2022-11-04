--[[
    Script Name    : SpawnScripts/SouthQeynos/KnightLieutenantSteelnerve.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.27 03:10:55
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	AddTimer(NPC,2000,"waypoints")
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn)    
	if math.random(0, 100) <= 25 and GetFactionAmount(Spawn,11) >20000 then
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 4141262779, 4227030045, Spawn, 0)
	else
		CheckFaction(NPC, Spawn, "Qeynos")
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 722.86, -19.78, 186.54, 2, 0)
	MovementLoopAddLocation(NPC, 712.44, -19.4, 180.39, 2, 0)
	MovementLoopAddLocation(NPC, 704.05, -19.52, 174.26, 2, 0)
	MovementLoopAddLocation(NPC, 690.49, -20.1, 166.76, 2, 0)
	MovementLoopAddLocation(NPC, 680.84, -20.69, 158.19, 2, 0)
	MovementLoopAddLocation(NPC, 675.78, -20.99, 151.09, 2, 0)
	MovementLoopAddLocation(NPC, 669.99, -21.29, 138.05, 2, 0)
	MovementLoopAddLocation(NPC, 666.74, -21.31, 119.42, 2, 0)
	MovementLoopAddLocation(NPC, 666.35, -21.32, 110.47, 2, 6)
	MovementLoopAddLocation(NPC, 668.42, -21.31, 132.84, 2, 0)
	MovementLoopAddLocation(NPC, 670.78, -21.25, 143.81, 2, 0)
	MovementLoopAddLocation(NPC, 679.18, -20.75, 157.7, 2, 0)
	MovementLoopAddLocation(NPC, 690.36, -20.16, 166.11, 2, 0)
	MovementLoopAddLocation(NPC, 706.31, -19.46, 177.09, 2, 0)
	MovementLoopAddLocation(NPC, 721.42, -19.71, 185.96, 2, 0)
	MovementLoopAddLocation(NPC, 730.97, -20.28, 188.17, 2, 0)
	MovementLoopAddLocation(NPC, 749.59, -21.18, 185.15, 2, 0)
	MovementLoopAddLocation(NPC, 757.42, -21.36, 183.02, 2, 6)
	MovementLoopAddLocation(NPC, 758.33, -21.37, 182.87, 2, 0)
	MovementLoopAddLocation(NPC, 739.47, -20.77, 186.53, 2, 0)
	MovementLoopAddLocation(NPC, 721.38, -19.58, 193.22, 2, 0)
	MovementLoopAddLocation(NPC, 709.67, -19.53, 196.05, 2, 0)
	MovementLoopAddLocation(NPC, 704.09, -19.53, 193.3, 2, 0)
	MovementLoopAddLocation(NPC, 699.63, -19.53, 193.79, 2, 0)
	MovementLoopAddLocation(NPC, 690.51, -19.52, 196.04, 2, 0)
	MovementLoopAddLocation(NPC, 687.96, -19.52, 209.12, 2, 0)
	MovementLoopAddLocation(NPC, 686.28, -19.52, 216.52, 2, 0)
	MovementLoopAddLocation(NPC, 666.76, -19.56, 223.38, 2, 0)
	MovementLoopAddLocation(NPC, 666.76, -19.56, 223.38, 2, 6)
	MovementLoopAddLocation(NPC, 666.92, -19.53, 224.56, 2, 0)
	MovementLoopAddLocation(NPC, 671.55, -19.51, 228.09, 2, 0)
	MovementLoopAddLocation(NPC, 679.26, -19.7, 220.13, 2, 0)
	MovementLoopAddLocation(NPC, 686.86, -19.52, 211.74, 2, 0)
	MovementLoopAddLocation(NPC, 686.6, -19.46, 200.53, 2, 0)
	MovementLoopAddLocation(NPC, 697.21, -19.52, 194.19, 2, 0)
	MovementLoopAddLocation(NPC, 703.58, -19.53, 191.55, 2, 0)
	MovementLoopAddLocation(NPC, 705.67, -19.49, 183.13, 2, 0)
	MovementLoopAddLocation(NPC, 710.54, -19.42, 180.42, 2, 0)
	MovementLoopAddLocation(NPC, 724.88, -19.92, 185.97, 2, 0)
	MovementLoopAddLocation(NPC, 736.1, -20.56, 187.62, 2, 0)
	MovementLoopAddLocation(NPC, 754.01, -21.27, 184.15, 2, 6)
	MovementLoopAddLocation(NPC, 729.26, -20.17, 188.21, 2, 0)
end



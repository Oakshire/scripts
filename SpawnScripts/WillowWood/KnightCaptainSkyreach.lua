--[[
    Script Name    : SpawnScripts/WillowWood/KnightCaptainSkyreach.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.07 04:07:53
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
	CheckFaction(NPC, Spawn, "Qeynos")
    if GetFactionAmount(Spawn,11)>0 then
    if math.random(1,100)<25 then
	GenericGuardHail(NPC, Spawn)
    end        
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
						local choice = math.random(1, 3)
						if choice == 1 then
							PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 373851625, 467562033, Spawn)
						elseif choice == 2 then
							PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_ebfceda5.mp3", "Greetings, citizen. I am on guard duty. Should you get into trouble, seek me out.", "attention", 3448203562, 506341016, Spawn)
						elseif choice == 3 then
							PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 1886617373, 1115286759, Spawn)
						end

end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 816.89, -21.16, -572.46, 2, 35)
	MovementLoopAddLocation(NPC, 820.81, -21.39, -576.83, 2, 0)
	MovementLoopAddLocation(NPC, 824.72, -20.9, -581.63, 2, 0)
	MovementLoopAddLocation(NPC, 828.6, -19.92, -587.01, 2, 0)
	MovementLoopAddLocation(NPC, 831.54, -19.5, -592.42, 2, 0)
	MovementLoopAddLocation(NPC, 837.06, -20.5, -601.3, 2, 0)
	MovementLoopAddLocation(NPC, 840.34, -20.77, -603.08, 2, 0)
	MovementLoopAddLocation(NPC, 845.58, -21.2, -606.75, 2, 0)
	MovementLoopAddLocation(NPC, 851.71, -20.42, -609.68, 2, 0)
	MovementLoopAddLocation(NPC, 854.77, -20.07, -610.59, 2, 0)
	MovementLoopAddLocation(NPC, 863.08, -18.83, -608.81, 2, 0)
	MovementLoopAddLocation(NPC, 868.91, -18.54, -602.18, 2, 0)
	MovementLoopAddLocation(NPC, 873.08, -17.68, -595.72, 2, 0)
	MovementLoopAddLocation(NPC, 876.29, -16.47, -591.43, 2, 0)
	MovementLoopAddLocation(NPC, 877.53, -15.88, -585.86, 2, 35)
	MovementLoopAddLocation(NPC, 875.76, -16.55, -591.04, 2, 0)
	MovementLoopAddLocation(NPC, 871.92, -18.07, -597.72, 2, 0)
	MovementLoopAddLocation(NPC, 866.89, -18.59, -606.16, 2, 0)
	MovementLoopAddLocation(NPC, 861.3, -19.07, -608.9, 2, 0)
	MovementLoopAddLocation(NPC, 854.85, -20.06, -609.05, 2, 0)
	MovementLoopAddLocation(NPC, 847.76, -21.1, -607.34, 2, 0)
	MovementLoopAddLocation(NPC, 840.07, -20.79, -603.6, 2, 0)
	MovementLoopAddLocation(NPC, 835.21, -20.12, -598.65, 2, 0)
	MovementLoopAddLocation(NPC, 830.03, -19.57, -589.73, 2, 0)
	MovementLoopAddLocation(NPC, 821.2, -21.33, -576.27, 2, 0)
	MovementLoopAddLocation(NPC, 816.19, -21.14, -571.83, 2, 0)
end


